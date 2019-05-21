import 'package:flutter/material.dart';
import 'package:favent/Theme/colors.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:favent/src/utils/screen_size.dart';
import 'package:favent/main.dart';
import 'homepage.dart';

final DFFont= 'Josefin';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                                  const Color(0xFF81269D),
                                  const Color(0xFFEE112D)
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
                      ? _media.height / 4.3
                      : _media.height / 4.6,
                  width: _media.width - 30,
                  child:
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 2,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
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
                                    Icon(Icons.account_circle, color: Colors.grey,),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "User",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: DFFont,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Naman Shergill',
                                          style: Theme.of(context).textTheme.headline.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: DFFont,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.monetization_on, color: Colors.grey,),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Balance",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                              fontFamily: DFFont,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('2000',
                                            style: Theme.of(context).textTheme.headline.copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.4,
                                                fontFamily: DFFont,
                                            ))
                                      ],
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
                          onPressed: () {
//                            nvgIndex= 2;
//                            setState(() {
//                              nvgIndex=2;
//                            });
                          },
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
                            "Dashboard",
                            style: TextStyle(
                                fontSize: _media.longestSide <= 775 ? 35 : 40,
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
        Container(
          color: Colors.grey.shade50,
          width: _media.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: 25.0, right: 10, bottom: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Favors',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: DFFont,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: screenAwareSize(
                    _media.longestSide <= 775 ? 110 : 80, context),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCard('Request Items', Icons.playlist_add, context, '/favorsreq', Colors.green),
                      colorCard('Inventory', Icons.playlist_add_check, context, '' , Colors.blue),
                      colorCard('Previous Orders', Icons.playlist_play, context, '' , Colors.redAccent),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.arrow_drop_down, color: Colors.grey,),
            Text("Coming Soon", textAlign: TextAlign.center,style: TextStyle(color: Colors.grey, fontSize: 20, fontFamily: DFFont,),),
            Icon(Icons.arrow_drop_down, color: Colors.grey,),
          ],
        ),
        Divider(
          height: 20,
        ),
        Container(
          color: Colors.grey.shade50,
          width: _media.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: 25.0, right: 10, bottom: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Services',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: DFFont,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: screenAwareSize(
                    _media.longestSide <= 775 ? 110 : 80, context),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCarddisabled('Browse', Icons.build, context, '' , Colors.green),
                      colorCarddisabled('Add', Icons.add_box, context, '' , Colors.blue),
                      colorCarddisabled('Previous Orders', Icons.playlist_play, context, '' , Colors.redAccent)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          color: Colors.grey.shade50,
          width: _media.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: 25.0, right: 10, bottom: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Buy/Sell Items',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: DFFont,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: screenAwareSize(
                    _media.longestSide <= 775 ? 110 : 80, context),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCarddisabled('Buy', Icons.attach_money, context, '', Colors.green),
                      colorCarddisabled('Sell', Icons.money_off, context, '', Colors.blue),
                      colorCarddisabled('Previous Orders', Icons.playlist_play, context, '', Colors.redAccent),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
//          SizedBox(
//            height: 15,
//          ),
//          Divider(
//            height: 20,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Icon(Icons.arrow_drop_up, color: Colors.grey,),
//              Text("Coming Soon", textAlign: TextAlign.center,style: TextStyle(color: Colors.grey, fontSize: 20, fontFamily: 'Josefin),),
//              Icon(Icons.arrow_drop_up, color: Colors.grey,),
//            ],
//          ),
//          SizedBox(
//            height: 20,
//          ),
      ],
    );
  }
}

Widget colorCard(
    String text, IconData icon, BuildContext context, String route, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.all(10),
    height: 100,
    width: _media.width / 3 - 30,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
    ),
    child: Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(15),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: (){
          Navigator.pushNamed(
            context,
            route
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

Widget dbCards (String name, IconData icon, BuildContext context, Color color) {
  return Card(
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), ),
    child: InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: (){
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              margin: EdgeInsets.only(top: 10),
              elevation: 0,
              shape: CircleBorder(),
              color: color,
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(icon, color: Colors.white, size: 25,)),
            ),
            Container(
              padding: EdgeInsets.all(5),
              width: 120,
              child: Text(name,
                style: TextStyle(
                  inherit: true,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 15.0,),
                textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    ),
  );
}

Widget colorCarddisabled(
    String text, IconData icon, BuildContext context, String route, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.all(10),
    height: 100,
    width: _media.width / 3 - 30,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: Colors.grey,
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