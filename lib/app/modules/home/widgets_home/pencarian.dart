import 'package:flutter/material.dart';

class pencarian extends StatelessWidget {
  const pencarian({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Icon(Icons.search_rounded, color: Colors.grey),
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Pencarian',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )),
        ],
      ),
    );
  }
}
