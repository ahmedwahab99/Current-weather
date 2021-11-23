//import 'dart:js';
import 'package:climate/services/weather.dart';

import 'location_screen.dart';
import 'package:flutter/material.dart';
import 'package:climate/services/location.dart';
import 'package:climate/services/networking.dart';
import 'package:climate/utilities/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double ?latitude;
  double ?longtitude;

  @override
  void initState() {
    getLocationData();

    super.initState();

  }


  void getLocationData()async{

    var weatherData=await WeatherModel().getLocationWeather();

    Navigator.push(this.context, MaterialPageRoute(builder:(context){
      return LocationScreen(locationWeather: weatherData,);
    } )
    );


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white30,
          size: 30,
        ),
      ),
    );
  }

}
