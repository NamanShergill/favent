import 'package:favent/pages/dashboard.dart';
import 'package:flutter/material.dart';

class login1 extends StatefulWidget {
  @override
  _login1State createState() => _login1State();
}

class _login1State extends State<login1> {





  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    final DFFont = 'Josefin';

    return Scaffold(

        body:
        Container(

          width: _media.width,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                    constraints: BoxConstraints(maxHeight: _media.height-100),
                    width: _media.width,
                    height: _media.height * 0.5,





                ),
              ),

              Container(
                constraints: BoxConstraints(maxHeight: _media.height-100),
                width: _media.width,
                height: _media.height*0.5,


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Signup',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue
                      ),)
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}



