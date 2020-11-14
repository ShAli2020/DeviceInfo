import 'package:flutter/material.dart';
import 'page/dashboard.dart';


void main() => runApp(MaterialApp(

    builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child,
          );
        },
      home: Dashbord(),
    ));



