import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tourist_side_app/constants/const.dart';
import 'package:tourist_side_app/Pages/profilepage.dart';
import 'package:tourist_side_app/pages/homepage.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _pageindex = 0;
  final _image = '';
  static const _titles = [
    Text(
      '',
      style: TextStyle(
        color: primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      'Payments',
      style: TextStyle(
        color: primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      'Itinerary',
      style: TextStyle(
        color: primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      'IoT',
      style: TextStyle(
        color: primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
    Text(
      'Scan QR',
      style: TextStyle(
        color: primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0,
        backgroundColor: backgroundColor,
        elevation: 0,
        title: _titles[_pageindex],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_rounded, color: primaryColor, size: 24),
        ),
        actions: [
          Row(
            children: [
              if(_pageindex == 0)TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(backgroundColor),
                  shadowColor: WidgetStateProperty.all(backgroundColor),
                  overlayColor: WidgetStateProperty.all(backgroundColor),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tester',
                      style: TextStyle(color: primaryColor, fontSize: 14),
                    ),
                    Text(
                      'Tester-ID',
                      style: TextStyle(color: secondaryColor, fontSize: 10),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(999),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: kDebugMode
                          ? SizedBox(
                              height: 29,
                              width: 29,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 24,
                              ),
                            )
                          : CircleAvatar(backgroundImage: NetworkImage(_image)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: IndexedStack(index: _pageindex, children: [Home(),]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _pageindex = 4;
          });
        },
        backgroundColor: primaryColor,
        shape: CircleBorder(),
        elevation: 6,
        child: qrLogo,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _pageindex = index;
          });
        },
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        indicatorColor: secondaryColor,
        elevation: 0,
        backgroundColor: backgroundColor,
        selectedIndex: _pageindex,
        destinations: [
          NavigationDestination(icon: homeLogo, label: 'Home'),
          NavigationDestination(icon: paymentsLogo, label: 'Payments'),
          SizedBox(width: 5),
          NavigationDestination(icon: itineraryLogo, label: 'Itinerary'),
          NavigationDestination(icon: iotLogo, label: 'IoT'),
        ],
      ),
    );
  }
}
