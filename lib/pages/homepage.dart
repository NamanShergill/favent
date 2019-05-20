import 'package:flutter/material.dart';
import 'package:favent/Theme/colors.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:favent/src/utils/screen_size.dart';
import 'package:favent/pages/dashboard.dart';
import 'package:favent/pages/wallet.dart';
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

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _children = [
    Dashboard(),
    Wallet()
  ];

  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 1,
    );
    final pageView= PageView(
      controller: controller,
      physics: BouncingScrollPhysics(),
      onPageChanged: (int index) {
      setState(() {
        currentIndex = index;
      });
    },
      children: <Widget>[
        Dashboard(),
        Wallet()
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
              title: Text('Dashboard'),
              backgroundColor: Colors.red,
            ),
            BubbleBottomBarItem(
                icon: Icon(Icons.format_list_bulleted, color: Colors.purpleAccent),
                title: Text('Requests'),
                backgroundColor: Colors.purpleAccent
            ),
            BubbleBottomBarItem(
                icon: Icon(Icons.playlist_add_check, color: Colors.pink),
                title: Text('Inventory'),
                backgroundColor: Colors.pink
            ),
            BubbleBottomBarItem(
                icon: Icon(Icons.settings, color: Colors.blue),
                title: Text('Settings'),
                backgroundColor: Colors.blue
            ),
            BubbleBottomBarItem(
                icon: Icon(Icons.monetization_on, color: Colors.orangeAccent),
                title: Text('Points'),
                backgroundColor: Colors.orangeAccent
            ),
          ],
        )
    );
  }
}
