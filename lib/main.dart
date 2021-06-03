import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
//package for date and time formatting


//code for getting the date and formatting it to a string
var currentDate = new DateTime.now();

var dateFormatter = new DateFormat('MM/dd');

String formattedDate = dateFormatter.format(currentDate);



//code for getting the time and formatting it to a string
var currentTime = new DateTime.now();

var timeFormatter24hr = new DateFormat("HH:mm");
String formattedTime24hr = timeFormatter24hr.format(currentTime);
//returns time on 24 hour clock

var timeFormatter = new DateFormat.jm();
String formattedTime = timeFormatter.format(currentTime);
//returns time on 12 hour clock with AM and PM



void main() {
  runApp(DateTest());
}

class DateTest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Date and Time Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      
      home: new Scaffold(
        body: new Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              
              new Text("Current Date:",
                style: TextStyle(
                  fontSize: 33.0,
                  color: Colors.black,
                ),
              ),


              new Text(formattedDate,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black38
                ),
              ),

              new SizedBox(height: 20.0,),

              new Text("Current Time:",
                  style: TextStyle(
                    fontSize: 33.0,
                    color: Colors.black,
                  ),
              ),


              //12 hour Time (AM and PM)
              new Text(formattedTime,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black38
                ),
              ),

              //24 hour Time
              new Text(formattedTime24hr,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black38
                ),
              ),


              
            ],
          ),
        ),
      ) 
    );
  }
}
