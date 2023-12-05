import 'package:flutter/material.dart';

class InfoDasar extends StatelessWidget {
  const InfoDasar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 260,
                width: 170,
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
                child: Center(
                  child: Text('Konten Container'),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Info dasar & Tampilan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    buildTextField('Nama Acara :', 'irwan & mei'),
                    SizedBox(height: 10),
                    buildTextField(
                      'Link - Contoh : \npende-desak-wedding',
                      'irwan-&-mei',
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          buildTextField(
            'No Wa Penerima (No Wa Pemilik Acara)',
            '087724023534',
            '*Nomor ini tidak akan terlihat di undangan oleh tamu undangan',
          ),
          SizedBox(height: 10),
          buildDropdownField(
            'Agama (Digunakan untuk salam pembuka. Jika Universal maka tidak ada salam sesuai agama)',
            'Islam',
            ['Universal', 'Hindu', 'Islam', 'Kristen', 'Budha'],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildTextField(String label, String hintText,
      [String? additionalText]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
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
        if (additionalText != null) ...[
          SizedBox(height: 10),
          Text(additionalText),
        ],
        SizedBox(height: 20),
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
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
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
            suffixIcon: DropdownButton<String>(
              items: dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle dropdown value change here
              },
              underline: Container(),
              icon: Icon(Icons.arrow_drop_down),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
