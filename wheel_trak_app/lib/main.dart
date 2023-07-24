
import 'package:app_02/pages/Distance.dart';
import 'package:flutter/material.dart';
import 'package:app_02/pages/Home_Page.dart';
import 'package:app_02/pages/Chair_Status.dart';
//import 'package:app_02\lib\pages\Chair_Status.dart';
import 'package:app_02/pages/Maintenance.dart';
import 'package:app_02/pages/Setting_Page.dart';
import 'package:app_02/pages/Impacts.dart';
import 'package:app_02/pages/Registration.dart';
import 'package:app_02/pages/Splash.dart';
import 'package:app_02/pages/Tire_Video.dart';
import 'package:app_02/pages/Cleaning_Video.dart';
import 'package:app_02/pages/Registration2.dart';



void main() => runApp(MaterialApp(
  initialRoute: '/Splash',
  routes: {
    '/Splash': (context) => Splash(),
    '/Home_Page': (context) => Home_Page(),
    '/Chair_Status': (context) => Chair_Status(),
    '/Maintenance': (context) => Maintenance(),
    '/Setting_Page': (context) => Setting_Page(),
    '/Distance': (context) => Distance(),
    '/Impacts': (context) => Impacts(),
    '/Registration': (context) => Registration(),
    '/Registration2': (context) => Registration2(),
    '/Tire_Video': (context) => Tire_Video(),
    '/Cleaning_Video': (context) => Cleaning_Video(),
  },
));

