import 'package:favent/pages/favors/transactions/QRgen.dart';
import 'package:favent/pages/favors/transactions/QRscan.dart';
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
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QRScan()));
                },
                child: Text('QRGen'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QRGen()));
                },
                child: Text('QRScan'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
