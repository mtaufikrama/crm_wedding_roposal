import 'package:flutter/material.dart';

class Infowanita extends StatefulWidget {
  const Infowanita({Key? key}) : super(key: key);

  @override
  _InfowanitaState createState() => _InfowanitaState();
}

class _InfowanitaState extends State<Infowanita> {
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
          SizedBox(height: 10),
          buildDropdownField(
            'Anak ke? Contoh : Anak Pertama, Anak kedua, Anak ketiga dst...)',
            '1',
            ['1', '2', '3', '5', '6'],
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
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              enableDrag: true,
              showDragHandle: true,
              builder: (BuildContext context) {
                return Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Text('Anak Ke ?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                      ),
                      Divider(),
                      for (String value in dropdownItems)
                        ListTile(
                          title: Text(value),
                          onTap: () {
                            // Handle dropdown value change here
                            setState(() {
                              selectedDropdownValue = value;
                            });
                            Navigator.pop(context);
                          },
                        ),
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            width: double.infinity,
            height: 55,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(selectedDropdownValue),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
