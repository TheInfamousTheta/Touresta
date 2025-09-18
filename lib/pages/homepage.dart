import 'package:flutter/material.dart';
import 'package:tourist_side_app/constants/const.dart';
import 'package:tourist_side_app/Pages/view_all_finance.dart';
import 'package:tourist_side_app/pages/view_all_iot.dart';
import 'package:tourist_side_app/pages/view_all_security.dart';

class NavRow extends StatelessWidget {
  final String label;
  final int index;

  const NavRow({super.key, required this.label, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => index == 0
                    ? ViewAllFinance()
                    : index == 1
                    ? ViewAllSecurity()
                    : ViewAllIoT(),
              ),
            );
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.transparent),
            elevation: WidgetStateProperty.all(0),
          ),
          child: Row(
            children: [
              Text(
                'View all',
                style: TextStyle(color: Color(0xFFBCC5CC), fontSize: 12),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xFFBCC5CC),
                size: 12,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final Widget icon;
  final String label;

  const Button({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 68,
        width: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: icon,
            ),
            Text(
              label,
              style: TextStyle(
                color: primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  final _alert = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage('lib/placeholders/map_placeholder.png')),
        Column(
          children: [
            SizedBox(height: 200),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: [
                    if (_alert)
                      Container(
                        height: 84,
                        decoration: BoxDecoration(
                          border: Border.all(color: alertColor, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.warning_amber, color: alertColor),
                                SizedBox(width: 8),
                                Text(
                                  'Alert!',
                                  style: TextStyle(
                                    color: alertColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.block, color: primaryColor),
                                Text(
                                  'Test Alert Text',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ), //alert container
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF0A6C71), // Lighter color at the top
                            Color(0xFF024B4F), // Darker color at the bottom
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NavRow(label: 'Finance', index: 0),
                          //Finance View All
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Button(icon: upiLogo, label: 'UPI/NFC'),
                              Button(icon: historyLogo, label: 'History'),
                              Button(icon: bookingsLogo, label: 'Bookings'),
                            ],
                          ),
                          //Finance Buttons
                          SizedBox(height: 12),
                          Divider(color: Color(0xFFBCC5CC), thickness: 1),
                          NavRow(label: 'Security', index: 1),
                          //Security View All
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Button(icon: missingLogo, label: 'Missing'),
                              Button(icon: lostLogo, label: 'Lost'),
                              Button(icon: messagesLogo, label: 'Messages'),
                            ],
                          ),
                          //Security Buttons
                          SizedBox(height: 12),
                          Divider(color: Color(0xFFBCC5CC), thickness: 1),
                          NavRow(label: "IoT Devices", index: 2),
                          //IoT View All
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Button(label: 'Add', icon: addLogo),
                              Button(label: 'Manage', icon: manageLogo),
                              Button(label: 'Group', icon: groupLogo),
                            ],
                          ),
                          //IoT Buttons
                        ],
                      ),
                    ), //
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

