import 'package:flutter/material.dart';

class ListViewRiwayat extends StatelessWidget {
  const ListViewRiwayat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Kategori:'), Text('Belum di Public')]),
        )
      ]),
    );
  }
}
