import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:favent/src/utils/screen_size.dart';
import 'package:favent/Theme/colors.dart';

final DFFont= 'Josefin';

class buypoints extends StatefulWidget {
  @override
  _buypointsState createState() => _buypointsState();
}

class _buypointsState extends State<buypoints> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body:
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Material(
                  elevation: 6,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    constraints: BoxConstraints(minHeight: 110),
                    height: _media.height * 0.115,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage('assets/images/bg.jpg'),
                          fit: BoxFit.none,
                        )
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(minHeight: 95),
                  height: _media.height * 0.099,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                                iconSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            'Buy Favor Points',
                            style: TextStyle(
                                fontSize: _media.longestSide * 0.03,
                                fontFamily: DFFont,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Purchase Options',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: DFFont,
                        letterSpacing: 0.4
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          colorCard('100 Points', '₹15','', context, Colors.green),
                          colorCard('200 Points', '₹25','', context, Colors.orangeAccent),
                          colorCard('500 Points', '₹45', '' , context, Colors.blue),
                          colorCard('1000 Points', '₹85','', context, Colors.redAccent),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget colorCard(
    String amount, String price, String link, BuildContext context, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minHeight: 90, minWidth: 250),
    margin: EdgeInsets.only(top: 15),
    height: screenAwareSize(60, context),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.monetization_on,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    amount,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: DFFont
                    ),
                  ),
                ],
              ),
              Text(
                price,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
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