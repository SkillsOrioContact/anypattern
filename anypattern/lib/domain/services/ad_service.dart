import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'subscription_service.dart';

class AdService {
  final Ref ref;

  AdService(this.ref);

  Future<void> init() async {
    await MobileAds.instance.initialize();
  }

  /// Returns the AdMob banner unit ID depending on the platform
  String get bannerAdUnitId {
    if (Platform.isAndroid) {
      // Test Banner ID
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      // Test Banner ID
      return 'ca-app-pub-3940256099942544/2934735716';
    }
    throw UnsupportedError('Unsupported platform');
  }

  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) => debugPrint('BannerAd loaded.'),
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
          debugPrint('BannerAd failed to load: $error');
        },
      ),
    );
  }
}

final adServiceProvider = Provider<AdService>((ref) {
  return AdService(ref);
});

class BottomBannerAd extends ConsumerStatefulWidget {
  const BottomBannerAd({super.key});

  @override
  ConsumerState<BottomBannerAd> createState() => _BottomBannerAdState();
}

class _BottomBannerAdState extends ConsumerState<BottomBannerAd> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  void _loadAd() {
    final adService = ref.read(adServiceProvider);
    _bannerAd = adService.createBannerAd()
      ..load().then((_) {
        if (mounted) setState(() => _isLoaded = true);
      });
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isPremium = ref.watch(isPremiumProvider);

    // Do not show ads for premium users
    if (isPremium) {
      return const SizedBox.shrink();
    }

    if (_isLoaded && _bannerAd != null) {
      return Container(
        alignment: Alignment.center,
        width: _bannerAd!.size.width.toDouble(),
        height: _bannerAd!.size.height.toDouble(),
        child: AdWidget(ad: _bannerAd!),
      );
    }

    // Placeholder while loading
    return const SizedBox(height: 50);
  }
}