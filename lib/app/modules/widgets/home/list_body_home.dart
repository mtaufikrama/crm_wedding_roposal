import 'package:flutter/material.dart';
import 'package:crm_wedding/app/modules/widgets/home/card_listview_tema_rekomendasi.dart';
import 'package:crm_wedding/app/modules/widgets/home/card_listview_tema_undangan.dart';

class ListBody extends StatelessWidget {
  const ListBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        Text(
          'Tema Rekomendasi',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        CardProdukList(), // Assuming CardProdukList is a valid widget
        SizedBox(height: 10),
        Text(
          'Tema Undang Online',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        cardtemaundangan(),
        SizedBox(height: 10),
        cardtemaundangan(),
      ],
    );
  }
}
