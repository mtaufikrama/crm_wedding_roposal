import 'package:flutter/material.dart';

class TanggalAcara extends StatelessWidget {
  const TanggalAcara({Key? key});

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
              'Alamat & Tanggal Acara 1',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 10),
          buildTextField('Nama Acara', 'Resepsi Pernikahan ?'),
          buildTextField('Pilih Kabupaten/Kota', 'Pilih Kabupaten/Kota'),
          buildTextField(
            'Alamat Acara (Pilih Kabupaten terlebihdulu Sebelum Mengisi Alamat)',
            'Lokasi Alamat Acara ?',
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: buildTextField('Jam Awal', 'Jam Awal'),
              ),
              SizedBox(width: 10),
              Expanded(
                child: buildTextField('Jam Awal', 'Jam Akhir'),
              ),
            ],
          ),
          buildTextField('Zona Waktu', 'Zona Waktu'),
          buildTextField('Link Google Maps', 'Link Google Maps'),
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
