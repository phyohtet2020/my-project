import 'package:flutter/material.dart';
import 'package:flutter_exphyo/Pages/FlashScreen.dart';
import 'package:flutter_exphyo/Pages/LoginData.dart';

import 'Pages/Login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => FlashScreen(),
        "/a":(context)=>Login(),
        "/logindata":(context)=>LoginData(),
      }

    )
  );}


