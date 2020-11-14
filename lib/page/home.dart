import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';


class MyApp extends StatefulWidget {   
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor:Color(0xffC88A95),
          centerTitle: true,
          title: Text("Super-info"),
        ),
        body:Directionality(
            textDirection: TextDirection.ltr,
        child:Padding(
          padding: const EdgeInsets.only(bottom:10.0),
          child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            FutureBuilder<AndroidDeviceInfo>(
              future: deviceInfo.androidInfo,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  AndroidDeviceInfo info = snapshot.data;
                    return Container(
                      child: Column(
                        children: [
                          Cardinfo("Device Name","${info.device}"),
                          Cardinfo("Model","${info.model}"),
                          Cardinfo("Manufacturer Name","${info.manufacturer}"), 
                          Cardinfo("Brand","${info.brand}"),
                          Cardinfo("Haedware","${info.hardware}"),
                          Cardinfo("Product","${info..product}"),

                        ],
                      ),
                    );}
               return CircularProgressIndicator();
              }
            ),
          ],
      ),
        ),),
    );
  }

  Widget Cardinfo(String Title, String Detal) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width -38,
        decoration: BoxDecoration(
          color: Color(0xffC88A95).withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.device_unknown_sharp,size: 30,)),
          
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(height: 100,width: 200,
                child: ListTile(
                  title: Text(Title),
                  subtitle: Text(Detal,style: TextStyle(fontSize:14),),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}