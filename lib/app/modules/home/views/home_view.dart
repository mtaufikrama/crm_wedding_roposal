import 'dart:ui';

import 'package:crm_wedding/app/modules/widgets/home/card_listview_tema_rekomendasi.dart';
import 'package:crm_wedding/app/modules/widgets/home/card_listview_tema_undangan.dart';
import 'package:crm_wedding/app/modules/widgets/home/pencarian.dart';
import 'package:crm_wedding/app/modules/widgets/home/slider_category.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.amber, // Warna utama (kuning)
          ).copyWith(
            background: Colors.amber, // Warna latar belakang umum
            onBackground: Colors.white, // Warna teks pada latar belakang
            primary: Colors.black, // Warna teks dan ikon utama
            onPrimary: Colors.amber, // Warna teks pada teks dan ikon utama
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
                  color: Colors.white
                      .withOpacity(0.8), // Set opacity as per your preference
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
            // backgroundColor: Colors.white.withAlpha(200),
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
          body: ListView(
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
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Kategori Undangan',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
          ),
        ));
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.history_edu_rounded,
    Icons.person_rounded,
  ];
}
