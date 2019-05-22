import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {


  double sHeight= 0;
  String button= 'Sign Up';
  double lHeight;

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    lHeight= _media.height * 0.8;
    return Scaffold(
        body:
        Container(
          width: 900,
          child: Column(
            children: <Widget>[
              Expanded(
                child: AnimatedContainer(
                  constraints: BoxConstraints(maxHeight: _media.height-100),
                  width: _media.width,
                  height: lHeight,
                  duration: Duration(milliseconds: 350),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Login Placeholder',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey
                        ),)
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    sHeight = sHeight == 0
                        ? sHeight= _media.height * 0.8
                        : sHeight = 0
                    ;
                    button = button == 'Sign Up'
                        ? button = 'Login'
                        : button = 'Sign Up'
                    ;
                    lHeight = lHeight == 0
                        ? lHeight= _media.height * 0.8
                        : lHeight = 0
                    ;
                  });
                },
                child: AnimatedContainer(
                  constraints: BoxConstraints(minHeight: 100),
                  width: _media.width,
                  height: _media.height * 0.2,
                  duration: Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xFF81269D),
                        const Color(0xFFEE112D)
                      ],
                          begin: Alignment.centerLeft,
                          end:  Alignment.centerRight)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        button,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Josefin',
                          letterSpacing: 0.4
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedContainer(
                constraints: BoxConstraints(maxHeight: _media.height-100),
                width: _media.width,
                height: sHeight,
                duration: Duration(milliseconds: 350),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Signup Placeholder',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey
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
