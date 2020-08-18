import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

class BottomAdSection extends StatefulWidget {
  @override
  _BottomAdSectionState createState() => _BottomAdSectionState();
}

class _BottomAdSectionState extends State<BottomAdSection> {
  static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: <String>[],
    keywords: <String>["video call", "video", "call"],
    childDirected: false,
  );
  BannerAd _bannerAd;

  BannerAd createBannerAd() {
    return new BannerAd(
        adUnitId: BannerAd.testAdUnitId,
        size: AdSize.banner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("Banner event: $event");
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAdMob.instance.initialize(
      appId: FirebaseAdMob.testAppId,
    );
    _bannerAd = createBannerAd()
      ..load()
      ..show();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _bannerAd?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.0,
      height: 0.0,
    );
  }
}
