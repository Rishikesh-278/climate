import 'package:climate/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:climate/services/location.dart';
import 'package:http/http.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {

    final permission = await Geolocator.requestPermission();

    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }
  
  Future<void> getData() async
  {
    Response response =
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}



https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=eaad9201c4ac58dcfd09e65779215274