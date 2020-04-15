import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
  }

  BannerAd _bannerAd;

  MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps'],
    contentUrl: 'https://flutter.io',
    childDirected: false,
    testDevices: <String>[], // Android emulators are considered test devices
  );

  BannerAd CreateBannerAdd() {
    return BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.smartBanner,
      listener: (MobileAdEvent event) {
        print("BannerAd event is $event");
      }, 
    );
  }

  InterstitialAd _interstitialAd;
  InterstitialAd CreateInterstitialAd() {
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AddMob"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset("assets/"),
                RaisedButton(
                  onPressed: () {
                    _bannerAd ??= CreateBannerAdd();
                    _bannerAd
                      ..load()
                      ..show();
                  },
                  child: Text("Show Banner"),
                ),
                RaisedButton(
                  onPressed: () {
                    _bannerAd.dispose();
                    _bannerAd = null;
                  },
                  child: Text("Hide Banner Add"),
                ),
                RaisedButton(
                  onPressed: () {
                    _interstitialAd?.dispose();
                    _interstitialAd = CreateInterstitialAd()..load();
                  },
                  child: Text("Load Banner Add"),
                ),
                RaisedButton(
                  onPressed: () {
                    _interstitialAd?.show();
                  },
                  child: Text("Show InterstitialAd"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
