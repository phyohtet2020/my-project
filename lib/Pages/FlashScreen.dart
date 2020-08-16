import 'package:flutter/material.dart';
import 'package:flutter_exphyo/Helper/Global.dart';
import 'package:marquee_text/marquee_text.dart';
import 'package:shimmer/shimmer.dart';

class FlashScreen extends StatefulWidget {
  @override
  _FlashScreenState createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  changePages() async{
   await Future.delayed(Duration(seconds: 5));
    Navigator.pushNamed(context, "/a");
  }
 @override
  void initState() {
   // TODO: implement initState
   super.initState();
   changePages();
//  Global.changePage();
//  Navigator.pushNamed(context, "/a");
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlashScreen"),

      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.blueAccent,
                      highlightColor: Colors.pink,
                      child: Text("Shop",style: TextStyle(fontSize: 50),)),
                  Image.asset("assets/heart.png"),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.pinkAccent,
            child:MarqueeText(
              text:"Hello ya minn and phyo htaet san san win and nay chi win lae",style: TextStyle(
              color: Colors.white,fontSize: 20,
            ),
            )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, "/a");
        },
        child: Text("Login In",textAlign: TextAlign.center,),
      ),
    );
  }
}

