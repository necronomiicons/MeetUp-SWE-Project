
import 'package:flutter/material.dart';
import 'package:meetup/theme_data.dart';
import 'package:meetup/home.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});
 
  @override
  State<LoginPage> createState() => _LoginPageState();
}
    bool createAccount = false;
class _LoginPageState extends State<LoginPage>{
  //logic

  @override
  Widget build(BuildContext context){
    return SafeArea(
      
      top: false,
      bottom: false,
      child: Scaffold(
        extendBodyBehindAppBar:  true,
        appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,        
      ),


      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          spacing: 50,
          mainAxisAlignment: .center,
          children: [            
            //Title Text
            Wrap(
              direction: Axis.vertical,
              spacing: 10,
              children: [
                Text("MeetUp", style: titleStyle),
                Text("A meeting scheduling app.", style: textStyle),
              ],
            ),
            //Login text fields
            Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              children: [           
            SizedBox(
              width: 250,
              child:
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: "username" )
                )              
            ),
            SizedBox(
              width: 250,
              child:
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: "password" ),
                  obscureText: true,
                )
            ),          
            if(createAccount)//show the confirm password field if we're on the create account screen
              SizedBox(
              width: 250,
              child:
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: "confirm password", 
                   ),
                   
                  obscureText: true,
                )
            ),
              
            SizedBox(
              width: 200,
              child: 
                ElevatedButton(onPressed: (){
                  //update logic to handle credentials later
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                }, child: Text("submit")),              
            ),            
            SizedBox(//show login/create account button depending on which screen we're on
              width: 200,
              child: 
                ElevatedButton(onPressed: (){setState(() {
                  createAccount = !createAccount;
                });}, 
                child: createAccount ? Text("login") : Text("create account")),              
            ),
          ]),         
            //Submit buttons
          ],
        ),
      ),  
    ));
  }
} 
