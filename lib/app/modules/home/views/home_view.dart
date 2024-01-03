import 'dart:ui';
import 'package:crm_wedding/app/modules/favorite/views/favorite_view.dart';
import 'package:crm_wedding/app/modules/profile/views/profile_view.dart';
import 'package:crm_wedding/app/modules/riwayat/views/riwayat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widgets_home/card_listview_tema_rekomendasi.dart';
import '../widgets_home/card_listview_tema_undangan.dart';
import '../widgets_home/pencarian.dart';
import '../widgets_home/slider_category.dart';

class HomeView extends StatefulWidget {
  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        showModalBottomSheet(
          showDragHandle: true,
          context: context,
          enableDrag: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          builder: (context) => buildSheet(),
        );
        return true;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.amber, // Main color (yellow)
          ).copyWith(
            background: Colors.amber, // Common background color
            onBackground: Colors.white, // Text color on background
            primary: Colors.black, // Main text and icon color
            onPrimary: Colors.amber, // Text color on main text and icon
          ),
        ),
        home: Scaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
          backgroundColor: Color(0xffF7EBE1),
          bottomNavigationBar: Container(
            margin: EdgeInsets.all(20),
            height: size.width * .155,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.white.withOpacity(0.8),
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * .024),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AnimatedContainer(
                            duration: Duration(milliseconds: 1500),
                            curve: Curves.fastLinearToSlowEaseIn,
                            margin: EdgeInsets.only(
                              bottom:
                                  index == currentIndex ? 0 : size.width * .029,
                              right: size.width * .0422,
                              left: size.width * .0422,
                            ),
                            width: size.width * .128,
                            height:
                                index == currentIndex ? size.width * .014 : 0,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(10),
                              ),
                            ),
                          ),
                          Icon(
                            listOfIcons[index],
                            size: size.width * .076,
                            color: index == currentIndex
                                ? Colors.black
                                : Colors.black38,
                          ),
                          SizedBox(height: size.width * .03),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          appBar: AppBar(
            toolbarHeight: 70,
            backgroundColor: Color(0xffF7EBE1).withAlpha(200),
            automaticallyImplyLeading: false,
            title: Column(
              children: [
                pencarian(),
              ],
            ),
            flexibleSpace: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          body: buildBody(),
        ),
      ),
    );
  }

  Widget buildSheet() {
    return Container(
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            Column(
              children: [
                Text('Anda yakin ingin meninggalkan Aplikasi?',
                    textAlign: TextAlign.center),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    SystemNavigator.pop();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent),
                    child: const Center(
                      child: Text('Keluar dari Aplikasi ?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: const Center(
                      child: Text('Kembali',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget buildBody() {
    if (currentIndex == 0) {
      return ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          SizedBox(height: 130),
          Container(
            child: Column(children: [
              Text(
                'Ayo Buat Undangan Online Website',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Untuk Acara Apapun Dalam 15 Menit',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ]),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              'Kategori Undangan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          SliderCategoty(),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              'Tema Rekomendasi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          CardProdukList(), // Assuming CardProdukList is a valid widget
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              'Tema Undang Online',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          cardtemaundangan(),
          SizedBox(height: 10),
          cardtemaundangan(),
          SizedBox(height: 100),
        ],
      );
    } else if (currentIndex == 1) {
      return FavoriteView();
    } else if (currentIndex == 2) {
      return RiwayatView();
    } else {
      return ProfileView();
    }
  }
}

List<IconData> listOfIcons = [
  Icons.home_rounded,
  Icons.favorite_rounded,
  Icons.history_edu_rounded,
  Icons.person_rounded,
];
