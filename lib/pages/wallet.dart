import 'package:flutter/material.dart';
import 'package:favent/Theme/colors.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:favent/src/utils/screen_size.dart';


final DFFont= 'Josefin';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.all(0),
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          color: Colors.grey.shade50,
          height: _media.height / 2 - 40,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Stack(
                      children: <Widget>[
                        Material(
                          elevation: 4,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  const Color(0xFFEE112D),
                                  const Color(0xFF81269D),
                                ],
                                    begin: Alignment.centerLeft,
                                    end:  Alignment.centerRight)
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Container(
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: _media.longestSide <= 775
                      ? _media.height / 5
                      : _media.height / 5.3,
                  width: _media.width - 30,
                  child:
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 2,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: <Widget> [Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: _media.width - 40,
                            padding: EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.monetization_on, color: Colors.grey,),
                                    Text(
                                      "Favor Points",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: DFFont,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '2000',
                                  style: Theme.of(context).textTheme.headline.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: DFFont,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),]
                    ),
                  ),
                ),
              ),
              Positioned(
                top: _media.longestSide <= 775
                    ? screenAwareSize(20, context)
                    : screenAwareSize(35, context),
                left: 10,
                right: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 28,
                          ),
                          onPressed: () => print("account"),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 28,
                          ),
                          onPressed: () => print("notification"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Wallet",
                            style: TextStyle(
                                fontSize: _media.longestSide <= 775 ? 35 : 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: DFFont),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


Widget colorCard(
    String text, String text2, BuildContext context, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.only(top: 15, right: 15),
    height: screenAwareSize(70, context),
    width: _media.width - 60,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: color.withOpacity(0.4),
              blurRadius: 16,
              spreadRadius: 0.2,
              offset: Offset(0, 8)),
        ]),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: (){

        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: DFFont
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: DFFont
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
