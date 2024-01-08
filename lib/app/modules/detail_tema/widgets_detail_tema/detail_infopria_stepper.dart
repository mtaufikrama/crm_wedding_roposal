import 'package:flutter/material.dart';

class InfoPria extends StatefulWidget {
  const InfoPria({Key? key}) : super(key: key);

  @override
  _InfoPriaState createState() => _InfoPriaState();
}

class _InfoPriaState extends State<InfoPria> {
  String selectedDropdownValue = "1"; // Default value dropdown
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
          SizedBox(height: 10),
          buildDropdownField(
            'Anak ke? Contoh : Anak Pertama, Anak kedua, Anak ketiga dst...)',
            '1',
            ['1', '2', '3', '5', '6'],
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

  Widget buildDropdownField(
    String label,
    String hintText,
    List<String> dropdownItems,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.normal)),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300, width: 1),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedDropdownValue,
              items: dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle dropdown value change here
                setState(() {
                  selectedDropdownValue = value!;
                });
              },
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
