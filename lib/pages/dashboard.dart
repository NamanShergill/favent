import 'package:flutter/material.dart';
import 'package:favent/Theme/colors.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:favent/src/utils/screen_size.dart';

class Dashboard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.all(0),
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          color: Colors.grey.shade50,
          height: _media.height / 2,
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
                      ? _media.height / 4
                      : _media.height / 4.3,
                  width: _media.width - 30,
                  child:
                  Card(
                    color: primaryBlack,
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
                                    Text(
                                      "User",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Varela'
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Naman Shergill',
                                  style: Theme.of(context).textTheme.headline.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Varela'
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.monetization_on, color: Colors.grey,),
                                    Text(
                                      "Balance",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Varela'
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('2000',
                                    style: Theme.of(context).textTheme.headline.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Varela'
                                    ))
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
                            "Dashboard",
                            style: TextStyle(
                                fontSize: _media.longestSide <= 775 ? 35 : 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Varela"),
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
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Varela'
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
                      Card(
                        color: primaryBlack,
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
                                  color: Colors.green,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.playlist_add, color: Colors.white,size: 25,)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 120,
                                  child: Text('Request Items',
                                    style: TextStyle(
                                      inherit: true,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,),
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: primaryBlack,
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
                                  color: Colors.orangeAccent,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.playlist_add_check, color: Colors.white,size: 25,)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 120,
                                  child: Text('Inventory',
                                    style: TextStyle(
                                      inherit: true,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,),
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: primaryBlack,
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
                                  color: Colors.redAccent,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.playlist_play, color: Colors.white,size: 25,)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 120,
                                  child: Text('Transactions',
                                    style: TextStyle(
                                      inherit: true,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,),
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
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
            Text("Coming Soon", textAlign: TextAlign.center,style: TextStyle(color: Colors.grey, fontSize: 20, fontFamily: 'Varela'),),
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
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Varela'
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
                      Card(
                        color: primaryBlack,
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
                                  color: Colors.green,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.build, color: Colors.white,size: 25,)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 120,
                                  child: Text('Browse',
                                    style: TextStyle(
                                      inherit: true,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,),
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: primaryBlack,
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
                                  color: Colors.orangeAccent,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.add_box, color: Colors.white,size: 25,)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 120,
                                  child: Text('Add',
                                    style: TextStyle(
                                      inherit: true,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,),
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: primaryBlack,
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
                                  color: Colors.redAccent,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.playlist_play, color: Colors.white,size: 25,)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 120,
                                  child: Text('Transactions',
                                    style: TextStyle(
                                      inherit: true,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,),
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
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
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Varela'
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
                      Card(
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
                                  color: Colors.green,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.add_circle, color: Colors.white,size: 25,)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 120,
                                  child: Text('Buy',
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
                      ),
                      Card(
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
                                  color: Colors.orangeAccent,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.attach_money, color: Colors.white,size: 25,)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 120,
                                  child: Text('Sell',
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
                      ),
                      Card(
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
                                  color: Colors.redAccent,
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.playlist_play, color: Colors.white,size: 25,)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 120,
                                  child: Text('Transactions',
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
                      ),
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
//              Text("Coming Soon", textAlign: TextAlign.center,style: TextStyle(color: Colors.grey, fontSize: 20, fontFamily: 'Varela'),),
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