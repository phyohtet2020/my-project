import 'package:flutter/material.dart';

class LoginData extends StatefulWidget {
  @override
  _LoginDataState createState() => _LoginDataState();
}

class _LoginDataState extends State<LoginData> {

  @override
  Widget build(BuildContext context) {
    var map=ModalRoute.of(context).settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginData"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context,"/");
        },
        child: Text("Flash"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text( "Your Name is " +map['name'],style: TextStyle(fontSize: 30),),
            SizedBox(height: 30,),
            Text("Your PassWord is "+map['pass'],style: TextStyle(fontSize: 30),)
          ],
        ),
      )
    );
  }
}
