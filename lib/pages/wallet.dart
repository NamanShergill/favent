import 'package:flutter/material.dart';
import 'package:favent/Theme/colors.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:favent/src/utils/screen_size.dart';

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
                                  Colors.blue,
                                  Colors.greenAccent
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
                                      "",
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
                                  '',
                                  style: Theme.of(context).textTheme.headline.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Varela'
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.monetization_on, color: Colors.grey,),
                                    Text(
                                      "",
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
                                Text('',
                                    style: Theme.of(context).textTheme.headline.copyWith(
                                        color: Colors.black,
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
                            "Wallet",
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
      ],
    );
  }
}
