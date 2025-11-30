
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
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
       // title: Text(widget.title),
      ),


      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          spacing: 50,
          mainAxisAlignment: .center,
          children: [],
        ),
      ),  


    ));
  }
} 
