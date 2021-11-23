import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';


class Location{
  late double latitude;
  late double longtitude;
  //late Position position;
  Future<void> getCurrentLocation() async {
     /*final GeolocatorPlatform geolocator= GeolocatorPlatform.instance;

    try {
          position = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
          latitude=position.latitude;
          longtitude=position.longitude;
    } catch (e) {
      print(e);
    }*/

    latitude = 2;
    longtitude = 3;



  }
}