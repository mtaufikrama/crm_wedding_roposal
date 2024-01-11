import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TanggalAcara extends StatefulWidget {
  const TanggalAcara({Key? key}) : super(key: key);

  @override
  _TanggalAcaraState createState() => _TanggalAcaraState();
}

class _TanggalAcaraState extends State<TanggalAcara> {
  String selectedDropdownValue = "Akad"; // Default value dropdown
  String selectedDropdownValueKota =
      "Jakarta Selatan"; // Default value dropdown
  String selectedDropdownValueZonaWaktu = "PM"; // Default value dropdown
  DateTime selectedTimeAwal = DateTime.now();
  DateTime selectedTimeAkhir = DateTime.now();
  DateTime selectedDateTanggal = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          buildDropdownFieldTanggal('Tanggal Acara'),
          SizedBox(height: 10),
          buildDropdownField(
            'Nama Acara',
            '1',
            [
              'Repsesi',
              'Akad',
            ],
          ),
          buildDropdownFieldKota(
            'Pilih Kabupaten/Kota',
            'Jakarta Selatan',
            [
              'Jakarta Selatan',
              'Jakarta Barat',
              'Jakarta Timur',
              'Jakarta Utara',
            ],
          ),
          buildTextField(
            'Alamat Acara (Pilih Kabupaten terlebihdulu Sebelum Mengisi Alamat)',
            'Lokasi Alamat Acara ?',
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: buildTextFieldJamAwal('Jam Awal', 'Jam Awal'),
              ),
              SizedBox(width: 10),
              Expanded(
                child: buildTextFieldJamAkhir('Jam Akhir', 'Jam Akhir'),
              ),
            ],
          ),
          SizedBox(height: 10),
          buildDropdownFieldZonaWaktu(
            'Zona Waktu',
            'PM',
            [
              'PM',
              'AM',
            ],
          ),
          buildTextField('Link Google Maps', 'Link Google Maps'),
        ],
      ),
    );
  }

  Widget buildTextField(String label, String hintText) {
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

  Widget buildTextFieldJamAwal(String label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text('Jam Awal'),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            _showTimePickerAwal(context);
          },
          child: Container(
            width: double.infinity,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${selectedTimeAwal.hour}:${selectedTimeAwal.minute}',
                ),
                Icon(Icons.access_time),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _showTimePickerAwal(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(selectedTimeAwal),
    );

    if (picked != null && picked != TimeOfDay.fromDateTime(selectedTimeAwal)) {
      setState(() {
        selectedTimeAwal = DateTime(
          selectedTimeAwal.year,
          selectedTimeAwal.month,
          selectedTimeAwal.day,
          picked.hour,
          picked.minute,
        );
      });
    }
  }

  Widget buildTextFieldJamAkhir(String label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text('Jam Akhir'),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            _showTimePickerAkhir(context);
          },
          child: Container(
            width: double.infinity,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${selectedTimeAkhir.hour}:${selectedTimeAkhir.minute}',
                ),
                Icon(Icons.access_time),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _showTimePickerAkhir(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(selectedTimeAkhir),
    );

    if (picked != null && picked != TimeOfDay.fromDateTime(selectedTimeAkhir)) {
      setState(() {
        selectedTimeAkhir = DateTime(
          selectedTimeAkhir.year,
          selectedTimeAkhir.month,
          selectedTimeAkhir.day,
          picked.hour,
          picked.minute,
        );
      });
    }
  }

  Widget buildDropdownField(
    String label,
    String hintText,
    List<String> dropdownItems,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
        ),
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
                        child: Text('Nama Acara :',
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

  Widget buildDropdownFieldKota(
    String label,
    String hintText,
    List<String> dropdownItems,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
        ),
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
                        child: Text('Pilih Kabupaten/Kota :',
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
                              selectedDropdownValueKota = value;
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
                Text(selectedDropdownValueKota),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget buildDropdownFieldZonaWaktu(
    String label,
    String hintText,
    List<String> dropdownItems,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
        ),
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
                        child: Text('Pilih Zona Waktu :',
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
                              selectedDropdownValueZonaWaktu = value;
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
                Text(selectedDropdownValueZonaWaktu),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget buildDropdownFieldTanggal(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(label),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            _selectDate(context);
          },
          child: Container(
            width: double.infinity,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('yyyy-MM-dd').format(selectedDateTanggal),
                ),
                Icon(Icons.calendar_today),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDateTanggal,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDateTanggal) {
      setState(() {
        selectedDateTanggal = picked;
      });
    }
  }
}
