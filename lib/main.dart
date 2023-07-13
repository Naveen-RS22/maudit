import 'package:flutter/material.dart';
import 'package:maudit/Components/app_extensions.dart';

import 'SplashScreen/InfoTab/InfoCard.dart';
import 'SplashScreen/Splash.dart';
import 'DebugFolder/SplashScreen.dart';
import 'DebugFolder/debug.dart';

void main(){
  return(runApp(const myApp()));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(primarySwatch: context.res.color.materialColorAccent),
      home: Splash(),
    );

  }
}
