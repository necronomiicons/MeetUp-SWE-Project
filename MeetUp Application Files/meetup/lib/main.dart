import 'package:flutter/material.dart';
import 'package:meetup/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeetUp',
      theme: appTheme,
      home: const LaunchPage(title: 'MeetUp'),
    );
  }
}

class LaunchPage extends StatefulWidget{
  const LaunchPage({super.key, required this.title});
  final String title;
  @override
  State<LaunchPage> createState() => _LaunchPageState();
}
class _LaunchPageState extends State<LaunchPage>{
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),


      body: Align(
        alignment: Alignment.topCenter,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          spacing: 50,
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
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

            Wrap(
            
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10,
            children: [
            //Login Button
            ElevatedButton(
            onPressed: (){},
            child: Text("login")),

            //Create Account Button
            ElevatedButton(             
            onPressed: (){},
            child: Text("create account"))
            ],)
            
          ],
        ),
      ),  


    ));
  }
} 
