import 'package:crm_wedding/app/modules/webview/views/webview_view.dart';
import 'package:crm_wedding/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ListviewFavorite extends StatelessWidget {
  const ListviewFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Container(
            width: 370,
            margin: EdgeInsets.only(left: 0, top: 10),
            child: Text(
                'Seluruh tema dibawah ini bisa Digunakan Semua. Klik lihat untuk melihat hasil',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                )),
          ),
          _buildCard(),
          _buildCard(),
          _buildCard(),
          _buildCard(),
          _buildCard(),
          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }

  Widget _buildCard() {
    return Container(
      height: 220,
      width: 370,
      margin: EdgeInsets.only(left: 0, top: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(.15),
        //     blurRadius: 10,
        //     offset: Offset(0, 10),
        //   ),
        // ],
      ),
      child: Row(
        children: [
          Container(
            height: 190,
            width: 130,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/images/ss3.jpg"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.15),
                  blurRadius: 10,
                  offset: Offset(0, 10),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Nama Tema',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 20,
                  child: Text(
                    'Wedding Proposal',
                    maxLines: 4,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Kategori',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 20,
                  child: Text(
                    'Undangan Pernikahan',
                    maxLines: 4,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reting',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '5.0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.DETAIL_TEMA),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff132137),
                      onPrimary: Colors.white,
                    ),
                    child: const Text(
                      'Buat Sendiri',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(
                        WebviewView(
                          url: 'https://ulems.my.id/?to=Teman+teman+semua',
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff132137),
                      onPrimary: Colors.white,
                    ),
                    child: const Text(
                      'Lihat ',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
