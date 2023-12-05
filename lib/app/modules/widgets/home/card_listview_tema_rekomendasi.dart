import 'package:crm_wedding/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CardProdukList extends StatelessWidget {
  const CardProdukList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(children: [
        Container(
          height: 170,
          width: 130,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
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
            Container(margin: EdgeInsets.only(left: 10), child: Text('Nama :')),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: SizedBox(
                  height: 20,
                  child: Text(
                    'Wedding Proposal',
                    maxLines: 4,
                  )),
            ),
            SizedBox(
              height: 100,
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
                    primary: Colors.black, // Background color
                    onPrimary: Colors.amber, // Text Color (Foreground color)
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
                    // Get.toNamed(Routes.DETAIL_TEMA);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Background color
                    onPrimary: Colors.amber, // Text Color (Foreground color)
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
      ]),
    );
  }
}
