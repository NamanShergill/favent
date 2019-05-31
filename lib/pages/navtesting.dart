import 'package:flutter/material.dart';

class navtesting extends StatefulWidget {
  @override
  _navtestingState createState() => _navtestingState();
}

class _navtestingState extends State<navtesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Testing'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Login/Signup'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
