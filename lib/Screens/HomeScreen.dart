import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:test_app/Screens/userUserScreen.dart';
import 'package:test_app/ads/ad_helper.dart';
import 'package:test_app/concept/shared.dart';

import '../services/notificationservices/local_notification_services.dart';
import '/services/authentication.dart';
import '/services/database.dart';
import '/widget/contactList.dart';

import 'package:flutter/material.dart';
import 'search.dart';
import 'AboutScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  static const String route = "/homeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BannerAd? _bannerAd;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies

    super.didChangeDependencies();

    //contacts==null ? print("0"):print(contacts!.length);
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    if (mounted) {
      super.setState(fn);
    }
  }
  @override
  void initState() {

    // TODO: Load a banner ad
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
  }
  @override
  void dispose() {
    // TODO: Dispose a BannerAd object
    _bannerAd?.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("INTRO App")),
          leading: GestureDetector(
            onTap: () async {
              Map<String, dynamic> response =
                  await Database().getCurrentUserGroup();
              print(response);
              Navigator.of(context)
                  .pushNamed(AboutUserScreen.route, arguments: response);
            },
            child: Icon(
              Icons.account_circle,
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            IconButton(
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Search()));
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () async {
                  Authentication().signOut(context);
                  UserSimplePreferences.erase();
                },
                icon: Icon(Icons.logout))
          ]),
      body:Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            ContactList(),
            if (_bannerAd != null)
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
