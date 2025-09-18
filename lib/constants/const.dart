import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//all colors to be used in the app

const primaryColor = Color(0xFF063154);
const secondaryColor = Color(0xFF26668C);
const backgroundColor = Color(0xFFF7F6F2);
const alertColor = Color(0xFFBD0000);

//logos to be used
//home page logos
final addLogo = SvgPicture.asset(
  'lib/constants/logos/home_page/Add_logo.svg',
  semanticsLabel: 'Add',
);
final bookingsLogo = SvgPicture.asset(
  'lib/constants/logos/home_page/Booking_logo.svg',
  semanticsLabel: 'Bookings',
  fit: BoxFit.contain,
  height: 24,
  width: 24,
);
final groupLogo = SvgPicture.asset(
  'lib/constants/logos/home_page/Group_logo.svg',
  semanticsLabel: 'Groups',
);
final historyLogo = SvgPicture.asset(
  'lib/constants/logos/home_page/History_logo.svg',
  semanticsLabel: 'History',
);
final lostLogo = SvgPicture.asset(
  'lib/constants/logos/home_page/Lost_logo.svg',
  semanticsLabel: 'Lost',
);
final manageLogo = SvgPicture.asset(
  'lib/constants/logos/home_page/Manage_logo.svg',
  semanticsLabel: 'Manage',
);
final messagesLogo = SvgPicture.asset(
  'lib/constants/logos/home_page/Messages_logo.svg',
  semanticsLabel: 'Messages',
);
final missingLogo = SvgPicture.asset(
  'lib/constants/logos/home_page/Missing_logo.svg',
  semanticsLabel: 'Missing',
);
final upiLogo = SvgPicture.asset(
  'lib/constants/logos/home_page/UPI_logo.svg',
  semanticsLabel: 'UPI',
);
//navigation bar logos
final iotLogo = SvgPicture.asset(
  'lib/constants/logos/nav_bar/IoT_logo.svg',
  semanticsLabel: 'IoT',
);
final itineraryLogo = SvgPicture.asset(
  'lib/constants/logos/nav_bar/Itinerary_logo.svg',
  semanticsLabel: 'Itinerary',
);
final paymentsLogo = SvgPicture.asset(
  'lib/constants/logos/nav_bar/Payments_logo.svg',
  semanticsLabel: 'Payments',
);
final qrLogo = SvgPicture.asset(
    'lib/constants/logos/nav_bar/QR_logo.svg',
    semanticsLabel: 'QR',);
final homeLogo = SvgPicture.asset(
    'lib/constants/logos/nav_bar/Home_logo.svg',
    semanticsLabel: 'Home',);

