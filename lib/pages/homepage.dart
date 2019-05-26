import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:favent/pages/dashboard.dart';
import 'package:favent/pages/wallet.dart';
import 'package:favent/pages/profile.dart';
import 'package:favent/Theme/colors.dart';
import 'package:favent/pages/notifications.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIndex;

  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  final List<Widget> _children = [
    Dashboard(),
    Wallet()
  ];

  double alertHeight = 60;
  double alertHeight2= 60;

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    final pageController = PageController(
      initialPage: currentIndex,
    );

    void changePage(int index) {
      setState(() {
        currentIndex = index;
        pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeOutQuint);
      });
    }

    final pageView= PageView(
      controller: pageController,
      physics: BouncingScrollPhysics(),
      onPageChanged: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
      children: <Widget>[
        Dashboard(),
        Wallet(),
        notifPage(),
        ProfilePage(),
      ],
    );
    return Scaffold(
        body: Stack(
          children: <Widget>[
            pageView,
            Align(
                alignment: Alignment.bottomRight,
                child: alert()
            ),
          ],
        ),
//        floatingActionButton: FloatingActionButton(
//          onPressed: (){},
//          child: Icon(Icons.add),
//          backgroundColor: Colors.red,
//        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BubbleBottomBar(
          backgroundColor: Colors.white,
          hasNotch: true,
//          fabLocation: BubbleBottomBarFabLocation.end,
          opacity: .2,
          currentIndex: currentIndex,
          onTap: changePage,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                  16)), //border radius doesn't work when the notch is enabled.
          elevation: 8,
          items: [
            BubbleBottomBarItem(
              icon: Icon(Icons.dashboard, color: Colors.red,),
              title: Text('Dashboard',
                style: TextStyle(fontFamily: 'Josefin'),),
              backgroundColor: Colors.red,
            ),
            BubbleBottomBarItem(
                icon: Icon(Icons.account_balance_wallet, color: Colors.deepPurple),
                title: Text('Wallet',
                  style: TextStyle(fontFamily: 'Josefin'),),
                backgroundColor: Colors.deepPurple
            ),
            BubbleBottomBarItem(
                icon: Icon(Icons.notifications_active, color: Colors.pink),
                title: Text('Notifications',
                  style: TextStyle(fontFamily: 'Josefin'),),
                backgroundColor: Colors.pink
            ),
            BubbleBottomBarItem(
                icon: Icon(Icons.account_circle, color: Colors.indigo),
                title: Text('Profile',
                  style: TextStyle(fontFamily: 'Josefin'),),
                backgroundColor: Colors.indigo
            ),
          ],
        )
    );
  }
}

class alert extends StatefulWidget {
  @override
  _alertState createState() => _alertState();
}

class _alertState extends State<alert> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Timer _everySecond;
  double width;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
        duration: const  Duration(seconds: 2),
        vsync: this
    )..repeat();
    _everySecond = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if(_everySecond.tick<=3){
        setState(() {
        });
      }
      else{
        setState(() {
          width=50;
        });
      }
    });
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 60,
      color: Colors.green,
      width: width,
      duration: Duration(milliseconds: 800),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          AnimatedContainer(
            width: width-50,
            duration: Duration(milliseconds: 800),
            child: Text('Test'),
          ),
          AnimatedContainer(
              width: width==50?50:0,
              duration: Duration(milliseconds: 800),
              child: Icon(Icons.notification_important, color: Colors.white, size: 50,)
          )
        ],
      ),
    );
  }
}