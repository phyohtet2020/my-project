import 'package:flutter/material.dart';
import 'package:flutter_exphyo/Helper/Global.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _nameController=TextEditingController();
  final _passController=TextEditingController();



@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        color: Colors.greenAccent,
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                labelText: "UserName",
                prefixIcon: Icon(Icons.person)

              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              controller: _passController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                labelText: "PassWord",
                prefixIcon: Icon(Icons.lock)

              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                RaisedButton(
                  color: Colors.blueAccent,
                  onPressed: (){
                    if(_nameController.text==Global.name && _passController.text==Global.password){
                      Navigator.pushNamed(context, "/logindata",arguments: {
                        "name":_nameController.text,
                        'pass':_passController.text,
                      });
                    }else{
                      showDialog(
                        context: context,
                        builder: (context)=>
                          AlertDialog(
                            title: Text("Try Again"),
                            content: Text("Your UserName and Password are Wrong, if you haven't Register please Register "
                                ),
                            actions: [
                              RaisedButton(
                                child: Text("Ok"),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              )
                            ],

                          )

                      );
                    }
                  },
                  child:Text("Login",style: TextStyle(color: Colors.white),),
                ),
                Spacer(),
                RaisedButton(
                  onPressed: (){
                    if(_nameController.text.isNotEmpty && _passController.text.isNotEmpty){
                    Global.name=_nameController.text;
                    Global.password=_passController.text;
                    showDialog(
                      context: context,
                      builder: (context)=>AlertDialog(
                        title: Text("Successful"),
                        actions: [
                          RaisedButton(

                            child:Text("Ok"),
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      )
                    );}
                    else{showDialog(
                      context: context,
                      builder: (context)=>AlertDialog(
                        title:Text("Empty boxes"),
                        content: Text("Both UserName and Password need to be filled to Register "),
                        actions: [
                          RaisedButton(
                           onPressed: (){
                             Navigator.of(context).pop();
                           },
                            child: Text("ReFill"),
                          ),

                        ],
                      )
                    );}
                  },
                  child: Text("Register"),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, "/logindata");
        },
        child:Text("Login Data",textAlign: TextAlign.center,)
      ),
    );
  }
}




