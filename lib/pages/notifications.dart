import 'package:flutter/material.dart';
import 'package:favent/src/utils/screen_size.dart';
import 'package:favent/main.dart';
import 'package:favent/widgets/dropdown_category.dart';
import 'package:favent/Theme/colors.dart';

final DFFont= 'Josefin';

class notifPage extends StatefulWidget {
  @override
  _notifPageState createState() => _notifPageState();
}

class _notifPageState extends State<notifPage> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.shade50,
      child: ListView(
        padding: EdgeInsets.all(0),
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            constraints: BoxConstraints(minHeight: 350),
            color: Colors.transparent,
            height: _media.height / 2 - 100,
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
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/bg2.jpg'),
                                      fit: BoxFit.cover
                                  )
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
                    height: 140,
                    width: _media.width - 30,
                    child:
                    Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: (){
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: _media.width - 40,
                                padding: EdgeInsets.only(left: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '(No Urgent Notifications)',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Josefin',
                                            color: Colors.grey
                                          ),
                                        ),
                                        Icon(
                                          Icons.notifications_off,
                                          color: Colors.grey,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Notifications",
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Josefin"),
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
          SizedBox(
            height: 20,
          ),
          Column(
              children: <Widget>[
                Material(
                  elevation: 1,
                  color: Colors.white,
                  child: InkWell(
                    onTap: (){
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: _media.height / 3 - 80,
                            width: _media.width - 40,
                            padding: EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 1,
                  color: Colors.white,
                  child: InkWell(
                    onTap: (){
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: _media.height / 3 - 80,
                            width: _media.width - 40,
                            padding: EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
        ],
      ),
    );
  }
}

Widget colorCard(
    String text, IconData icon, BuildContext context, String route, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minWidth: 100),
    margin: EdgeInsets.all(10),
    height: 100,
    width: _media.width / 3 - 30,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: (){
          Navigator.pushNamed(
            context,
            route,
          );
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
                  fontSize: 17,
                  color: Colors.white,
                  fontFamily: DFFont,
                ),
              ),
              Icon(
                icon,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget colorCarddisabled(
    String text, IconData icon, BuildContext context, String route, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minWidth: 100),
    margin: EdgeInsets.all(10),
    height: 100,
    width: _media.width / 3 - 30,
    decoration: BoxDecoration(
      color: tBlack,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: tBlack,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontFamily: DFFont,
                ),
              ),
              Icon(
                icon,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    ),
  );
}