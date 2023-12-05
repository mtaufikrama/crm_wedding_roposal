import 'package:flutter/material.dart';

class Infowanita extends StatelessWidget {
  const Infowanita({super.key});

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
              'Tampilan wanita',
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
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Foto wanita (Maksimal 2MB)'),
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
          buildTextField('Nama wanita', 'Nama wanita ?'),
          buildTextField('Nama Panggilan wanita', 'Panggilan wanita ?'),
          buildTextField('Nama Ibu wanita', 'Ibu wanita ?'),
          buildTextField('Nama Ayah wanita', 'Ayah wanita ?'),
          buildTextField(
            'Anak ke? Contoh : Anak Pertama, Anak kedua, Anak ketiga dst...',
            'Anak Pertama ?',
          ),
          buildTextField('Alamat wanita', 'Alamat rumah si wanita ?'),
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
