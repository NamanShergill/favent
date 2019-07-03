import 'package:favent/pages/dashboard.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {





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




                    child: Text(
                      'hi'
                    )
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



