import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fahad/page/battery.dart';
import 'package:fahad/page/home.dart';
import 'package:fahad/page/system.dart';
import 'package:fahad/page/wifi.dart';
import 'package:flutter/material.dart';
class Dashbord extends StatefulWidget {
  @override
  _DashbordState createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
   List pages = [  MyApp() ,Wifi() ,Battrey(),  System() ,];
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFEE5E9),
        body: pages[selectedPage],
        bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Colors.white,
      color: Color(0xffC88A95),
      
      height: 50,
      items: <Widget>[
                Icon(Icons.home_outlined, size: 25,color:Colors.white),
        Icon(Icons.wifi_outlined, size: 25,color:Colors.white),
        Icon(Icons.battery_charging_full, size: 25,color:Colors.white),
        Icon(Icons.android_sharp, size: 25,color: Colors.white),
      ],
      index:0,
   animationDuration:Duration(milliseconds:200),
   animationCurve:Curves.easeInExpo,
       onTap: (change) {
              setState(() {
                selectedPage = change;
              });
            },),
    
    );
  }
}