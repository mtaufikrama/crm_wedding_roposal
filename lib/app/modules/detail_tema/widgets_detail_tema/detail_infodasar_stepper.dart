import 'package:crm_wedding/app/modules/webview/views/webview_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoDasar extends StatefulWidget {
  const InfoDasar({Key? key}) : super(key: key);

  @override
  _InfoDasarState createState() => _InfoDasarState();
}

class _InfoDasarState extends State<InfoDasar> {
  String selectedDropdownValue = "Islam"; // Default value dropdown

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text('Tema yang di pilih'),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () => Get.to(
                      WebviewView(
                        url: 'https://ulems.my.id/?to=Teman+teman+semua',
                      ),
                    ),
                    child: Container(
                      height: 260,
                      width: 170,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/images/ss3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.15),
                            blurRadius: 10,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 20),
                    buildTextField('Nama Acara :', 'adni & anggi'),
                    SizedBox(height: 10),
                    buildTextField(
                      'Link - Contoh : \npende-desak-wedding',
                      'adni-&-anggi',
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
                        child: Text('Pilih Agama :',
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
