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
        body: Column(
          children: <Widget>[
            Flexible(
                child: pageView),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5,  right: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade50,
                      ),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: alertHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: theme2.shade400,
                        ),
                        width: _media.width,
                        child: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: theme2.shade400,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: (){
                              setState(() {
                                alertHeight = 0;
                                currentIndex = 2;
                                pageController.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.ease);
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'You have active Requests',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontFamily: 'Josefin',
                                        ),
                                      ),
                                      Icon(
                                        Icons.playlist_play,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 350),
                    child: SizedBox(
                      height: alertHeight/12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,  right: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade50,
                      ),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: alertHeight2 = currentIndex != 2
                            ? alertHeight2 = 60
                            : alertHeight2 = 0,
                        width: _media.width,
                        decoration: BoxDecoration(
                          color: theme2.shade400,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: theme2.shade400,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: (){
                              setState(() {
                                alertHeight2 = 0;
                                currentIndex = 2;
                                pageController.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.ease);
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'You have unread notifications',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontFamily: 'Josefin',
                                        ),
                                      ),
                                      Icon(
                                        Icons.notification_important,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 350),
                    child: SizedBox(
                      height: alertHeight2/12,
                    ),
                  ),
                ],
              ),
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
