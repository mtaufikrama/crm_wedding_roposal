import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeranjangIcon extends StatefulWidget {
  @override
  _KeranjangIconState createState() => _KeranjangIconState();
}

class _KeranjangIconState extends State<KeranjangIcon> {
  bool isPressed = true;
  bool isPressed2 = true;
  bool isHighlighted = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onHighlightChanged: (value) {
              setState(() {
                isHighlighted = !isHighlighted;
              });
            },
            onTap: () {
              setState(() {
                isPressed2 = !isPressed2;
              });
            },
            child: AnimatedContainer(
              margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
              height: isHighlighted ? 50 : 45,
              width: isHighlighted ? 50 : 45,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.2),
                //     blurRadius: 20,
                //     offset: Offset(5, 10),
                //   ),
                // ],
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: isPressed2
                  ? Icon(
                      Icons.shopping_basket_rounded,
                      color: Colors.black.withOpacity(0.6),
                    )
                  : Icon(
                      Icons.shopping_basket_rounded,
                      color: Colors.orange,
                    ),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
