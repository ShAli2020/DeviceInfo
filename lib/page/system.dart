import 'package:flutter/material.dart';
import 'package:system_info/system_info.dart';



class System extends StatefulWidget {   
  @override
  _SystemState createState() => _SystemState();
}

class _SystemState extends State<System> {
// DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
            final processors = SysInfo.processors;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
       backgroundColor:Color(0xffC88A95),
          centerTitle: true,
          title: Text("System"),
        ),
        body:Directionality(
            textDirection: TextDirection.ltr,
        
      child: Directionality(
            textDirection: TextDirection.ltr,
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
                 Container(
                    child: Column(
                      children: [
                        Cardinfo("Kernal Name","${SysInfo.kernelName}"),
                        Cardinfo("Kernal architecture","${SysInfo.kernelArchitecture}"),
                        Cardinfo("Number of processers","${processors.length}"), 
                      ],
                    ),
               
           
          ),
        ],
      ),),),
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
            child: Icon(Icons.android_sharp,size: 30,)),
          
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