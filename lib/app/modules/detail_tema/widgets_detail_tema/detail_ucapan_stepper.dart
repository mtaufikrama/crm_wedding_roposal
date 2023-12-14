import 'package:flutter/material.dart';

class UcapanView extends StatelessWidget {
  const UcapanView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Ucapan & Kata-Kata',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 10),
          buildTextField(
              'Ucapan Pembuka (Ucapan awal undangan, bisa diisi doa)',
              'Ucapan Pembuka'),
          buildTextField('Ucapan Penutup', 'Ucapan Penutup'),
          buildTextField(
            'Pengumuman',
            'Isi Pengumuman',
          ),
          SizedBox(height: 10),
          buildTextField(
              'Doa (Optional : Kosongkan jika tidak ingin menampilkan doa)',
              'Ucapan Doa'),
          buildTextField('Text Hadiah', 'Text Hadiah'),
        ],
      ),
    );
  }

  Widget buildTextField(String label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(label),
        SizedBox(height: 10),
        TextField(
          minLines: 5,
          maxLines: 5,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
