import 'package:flutter/material.dart';
import 'package:wifi_info_plugin/wifi_info_plugin.dart';


class Wifi extends StatefulWidget {   
  @override
  _WifiState createState() => _WifiState();
}

class _WifiState extends State<Wifi> {
   Future<WifiInfoWrapper>   wifiObject =WifiInfoPlugin.wifiDetails;

 

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor:Color(0xffC88A95),
              centerTitle: true,
              title: Text("Wifi"),
            ),
            body:Directionality(
            textDirection: TextDirection.ltr,
           child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              FutureBuilder<WifiInfoWrapper>(
                future: wifiObject,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                WifiInfoWrapper info = snapshot.data;
                  return Container(
                    child: Column(
                      children: [
                        Cardinfo("my IP","${info.ipAddress}"),
                        Cardinfo("MacAdress","${info.macAddress}"),
                        Cardinfo("Router IP","${info.routerIp}"), 
                        Cardinfo("Ssid","${info.ssid}"),
                        Cardinfo("DNS 1","${info.dns1}"),
                        Cardinfo("DNS 2","${info.dns2}"),

                      ],
                    ),
                  );}
             return CircularProgressIndicator();
            }
          ),
        ],
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
            child: Icon(Icons.wifi,size: 30,)),
          
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(height: 100,width: 200,
                child: ListTile(
                  title: Text(Title),
                  subtitle: Text(Detal),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}