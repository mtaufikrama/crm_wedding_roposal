import 'dart:ui';

import 'package:crm_wedding/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/webview_controller.dart';

class WebviewView extends GetView<WebviewController> {
  final String url;
  const WebviewView({required this.url});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF7EBE1).withAlpha(200),
        title: Text('Tema Undangan Online Website',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 200,
              margin: EdgeInsets.only(left: 35, top: 130),
              child: FloatingActionButton.extended(
                  heroTag: "btn1",
                  // backgroundColor: Color(0XFF0D325E),
                  backgroundColor: Color.fromARGB(185, 255, 255, 255),
                  // child: Icon(Icons.refresh),
                  label: Column(
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
                        ),
                      ),
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
                              'Mulai Buat Undangan',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  onPressed: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
