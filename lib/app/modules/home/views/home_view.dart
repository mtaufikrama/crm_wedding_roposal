import 'package:crm_wedding/app/modules/widgets/home/card_listview_tema_rekomendasi.dart';
import 'package:crm_wedding/app/modules/widgets/home/card_listview_tema_undangan.dart';
import 'package:crm_wedding/app/modules/widgets/home/pencarian.dart';
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
          backgroundColor: Color(0xffF7EBE1),
          bottomNavigationBar: Container(
            margin: EdgeInsets.all(20),
            height: size.width * .155,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.15),
                  blurRadius: 30,
                  offset: Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(50),
            ),
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: size.width * .024),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
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
                        bottom: index == currentIndex ? 0 : size.width * .029,
                        right: size.width * .0422,
                        left: size.width * .0422,
                      ),
                      width: size.width * .128,
                      height: index == currentIndex ? size.width * .014 : 0,
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
                      color:
                          index == currentIndex ? Colors.black : Colors.black38,
                    ),
                    SizedBox(height: size.width * .03),
                  ],
                ),
              ),
            ),
          ),
          appBar: AppBar(
              toolbarHeight: 100,
              backgroundColor: Color(0xffF7EBE1),
              automaticallyImplyLeading: false,
              title: Column(
                children: [
                  pencarian(),
                ],
              )),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Tema Rekomendasi',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  CardProdukList(),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Tema Undang Online',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  cardtemaundangan(),
                  SizedBox(
                    height: 10,
                  ),
                  cardtemaundangan(),
                ],
              ),
            ),
          ),
        ));
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
}
