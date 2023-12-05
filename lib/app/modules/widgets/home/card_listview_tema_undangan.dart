import 'package:flutter/material.dart';

class cardtemaundangan extends StatelessWidget {
  const cardtemaundangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 230,
          width: 180,
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
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 230,
          width: 180,
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
        ),
      ],
    );
  }
}
