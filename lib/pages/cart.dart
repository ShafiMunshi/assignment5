import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task5/pages/tabbar/favourite.dart';
import 'package:task5/pages/tabbar/my_ads.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.blue,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.shop,
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Text(
                    'My AdsF',
                    style: GoogleFonts.raleway(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4F4C4C),
                    ),
                  ),
                ],
              ),
            ),
            Tab(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Text(
                    'Favourite',
                    style: GoogleFonts.raleway(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4F4C4C),
                    ),
                  ),
                ],
              ),
            )
          ]),
          centerTitle: true,
          title: Text(
            'My Ads',
            style: GoogleFonts.raleway(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Color(0xFF4F4C4C),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: TabBarView(children: [
          myAds(),
          Favourite(),
        ]),
      ),
    );
  }
}
