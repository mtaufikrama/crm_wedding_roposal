import 'package:flutter/material.dart';

class TanggalAcara extends StatefulWidget {
  const TanggalAcara({Key? key}) : super(key: key);

  @override
  _TanggalAcaraState createState() => _TanggalAcaraState();
}

class _TanggalAcaraState extends State<TanggalAcara> {
  String selectedDropdownValue = "Akad"; // Default value dropdown
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          buildTextField('Nama Acara', 'Resepsi Pernikahan ?'),
          buildDropdownField(
            'Nama Acara',
            '1',
            [
              'Repsesi',
              'Akad',
            ],
          ),
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
