import 'package:crm_wedding/app/modules/favorite/widgets_favorite/listview_aqiqah.dart';
import 'package:crm_wedding/app/modules/favorite/widgets_favorite/listview_favorite.dart';
import 'package:crm_wedding/app/modules/favorite/widgets_favorite/listview_khitan.dart';
import 'package:crm_wedding/app/modules/favorite/widgets_favorite/listview_wisuda.dart';
import 'package:crm_wedding/app/modules/kategori_pernikahan/widgets_kategori_nikahan/listview_pernikahan.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatefulWidget {
  @override
  _FavoriteViewState createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  bool isExpanded = true;
  bool isExpanded2 = true;
  bool isExpanded3 = true;
  bool isExpanded4 = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          child: Column(children: [
            Text(
              'Kategory favorite kamu',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'Beberapa List kategori yang kamu sukai',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ]),
        ),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            margin: EdgeInsets.symmetric(
              horizontal: isExpanded ? 10 : 0,
              vertical: 10,
            ),
            padding: EdgeInsets.all(10),
            height: isExpanded ? 60 : 1365,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 1200),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  blurRadius: 20,
                  offset: Offset(5, 10),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(isExpanded ? 20 : 0),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Undangan Online',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Pernikahan (20)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: Colors.black,
                      size: 27,
                    ),
                  ],
                ),
                isExpanded ? SizedBox() : SizedBox(height: 20),
                AnimatedCrossFade(
                  firstChild: Text(
                    'undangan ',
                    style: TextStyle(
                      fontSize: 0,
                    ),
                  ),
                  secondChild: ListviewFavorite(),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 1200),
                  reverseDuration: Duration.zero,
                  sizeCurve: Curves.fastLinearToSlowEaseIn,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            setState(() {
              isExpanded2 = !isExpanded2;
            });
          },
          child: AnimatedContainer(
            margin: EdgeInsets.symmetric(
              horizontal: isExpanded2 ? 10 : 0,
              vertical: 10,
            ),
            padding: EdgeInsets.all(10),
            height: isExpanded2 ? 60 : 1365,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 1200),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  blurRadius: 20,
                  offset: Offset(5, 10),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(isExpanded ? 20 : 0),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Undangan Online',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Wisuda (5)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      isExpanded2
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: Colors.black,
                      size: 27,
                    ),
                  ],
                ),
                isExpanded2 ? SizedBox() : SizedBox(height: 20),
                AnimatedCrossFade(
                  firstChild: Text(
                    '',
                    style: TextStyle(
                      fontSize: 0,
                    ),
                  ),
                  secondChild: ListviewWisuda(),
                  crossFadeState: isExpanded2
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 1200),
                  reverseDuration: Duration.zero,
                  sizeCurve: Curves.fastLinearToSlowEaseIn,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            setState(() {
              isExpanded3 = !isExpanded3;
            });
          },
          child: AnimatedContainer(
            margin: EdgeInsets.symmetric(
              horizontal: isExpanded3 ? 10 : 0,
              vertical: 10,
            ),
            padding: EdgeInsets.all(10),
            height: isExpanded3 ? 60 : 1365,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 1200),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  blurRadius: 20,
                  offset: Offset(5, 10),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(isExpanded ? 20 : 0),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Undangan Online',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Khitan (9)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      isExpanded3
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: Colors.black,
                      size: 27,
                    ),
                  ],
                ),
                isExpanded3 ? SizedBox() : SizedBox(height: 20),
                AnimatedCrossFade(
                  firstChild: Text(
                    '',
                    style: TextStyle(
                      fontSize: 0,
                    ),
                  ),
                  secondChild: ListviewKhitan(),
                  crossFadeState: isExpanded3
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 1200),
                  reverseDuration: Duration.zero,
                  sizeCurve: Curves.fastLinearToSlowEaseIn,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            setState(() {
              isExpanded4 = !isExpanded4;
            });
          },
          child: AnimatedContainer(
            margin: EdgeInsets.symmetric(
              horizontal: isExpanded4 ? 10 : 0,
              vertical: 10,
            ),
            padding: EdgeInsets.all(10),
            height: isExpanded4 ? 60 : 1365,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 1200),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  blurRadius: 20,
                  offset: Offset(5, 10),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(isExpanded ? 20 : 0),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Undangan Online',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Aqiqah (7)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      isExpanded4
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: Colors.black,
                      size: 27,
                    ),
                  ],
                ),
                isExpanded4 ? SizedBox() : SizedBox(height: 20),
                AnimatedCrossFade(
                  firstChild: Text(
                    '',
                    style: TextStyle(
                      fontSize: 0,
                    ),
                  ),
                  secondChild: ListviewAqiqah(),
                  crossFadeState: isExpanded4
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 1200),
                  reverseDuration: Duration.zero,
                  sizeCurve: Curves.fastLinearToSlowEaseIn,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
