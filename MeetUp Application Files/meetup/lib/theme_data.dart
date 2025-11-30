import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 156, 173, 228)),  
  //Default Button
  elevatedButtonTheme: ElevatedButtonThemeData(
    //Default visuals
    style: ElevatedButton.styleFrom(
    foregroundColor: const Color.fromARGB(221, 255, 255, 255),
    backgroundColor: Color.fromARGB(221, 158, 168, 255),
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
    
    )
    //Visual changes based on state
    .copyWith(  
      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states)
      {
        if(states.contains(WidgetState.hovered))//hover color
        {
          return Color.fromARGB(221, 85, 101, 245);
        }      
        return Color.fromARGB(221, 158, 168, 255);//default color
      }    
  ),
)
  ),
  
);

final TextStyle titleStyle = TextStyle(
  fontSize: 50,
  color: Color.fromARGB(221, 38, 45, 110),

);
final TextStyle textStyle = TextStyle(
  fontSize: 15,
  color: Color.fromARGB(221, 38, 45, 110),

);