import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:favent/pages/dashboard.dart';
import 'package:favent/pages/wallet.dart';
import 'package:favent/pages/profile.dart';
import 'package:favent/Theme/colors.dart';
import 'package:favent/pages/notifications.dart';

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

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(
      initialPage: currentIndex,
    );

    void changePage(int index) {
      setState(() {
        currentIndex = index;
        pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
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
        body: pageView,
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