import 'package:flutter/material.dart';

class InfoPria extends StatelessWidget {
  const InfoPria({super.key});

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
              'Tampilan Pria',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                height: 260,
                width: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text('Konten Container'),
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Foto Pria (Maksimal 2MB)'),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 170,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text('Pilih Foto dari Gallery'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          buildTextField('Nama Pria', 'Nama Pria ?'),
          buildTextField('Nama Panggilan Pria', 'Panggilan Pria ?'),
          buildTextField('Nama Ibu Pria', 'Ibu Pria ?'),
          buildTextField('Nama Ayah Pria', 'Ayah Pria ?'),
          buildTextField(
            'Anak ke? Contoh : Anak Pertama, Anak kedua, Anak ketiga dst...',
            'Anak Pertama ?',
          ),
          buildTextField('Alamat Pria', 'Alamat rumah si Pria ?'),
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
