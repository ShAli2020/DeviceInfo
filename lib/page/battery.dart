// import 'package:battery_info/battery_info_plugin.dart';
// import 'package:battery_info/enums/charging_status.dart';
// import 'package:battery_info/method_channel_battery_info.dart';
// import 'package:battery_info/model/android_battery_info.dart';
import 'package:flutter/material.dart';


class Battrey extends StatefulWidget {   
  @override
  _BattreyState createState() => _BattreyState();
}

class _BattreyState extends State<Battrey> {
// DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

 Future<void> _showMyDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context)   {
      return AlertDialog(
        // title: Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text("Battery Level: %"),
              // FutureBuilder<AndroidBatteryInfo>(
              //     future: BatteryInfoPlugin().androidBatteryInfo,
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //         return Text(
              //             'Battery Health: ${snapshot.data.health.toUpperCase()}');
              //       }
              //       return CircularProgressIndicator();
              //     }),
              // SizedBox(
              //   height: 20,
              // ),
              // StreamBuilder<AndroidBatteryInfo>(
              //     stream: BatteryInfoPlugin().androidBatteryInfoStream,
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //       return Text("Battery:  ${(snapshot.data.batteryLevel)} %");}  })
            ]
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Directionality(
            textDirection: TextDirection.ltr,
  child:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Battery State"),
         backgroundColor:Color(0xffC88A95)
        ),
                backgroundColor: Color(0xffC88A95).withOpacity(0.3),

         floatingActionButton: FloatingActionButton(onPressed: (){ _showMyDialog();},
        child:Icon(Icons.battery_unknown),
        elevation: 0.4,
        backgroundColor: Color(0xffC88A95),
),
        body:   
         
            Center(child:Text ("Battery State.charging"),),
           
        
      
  ),  
    );
  }
}