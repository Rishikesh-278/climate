import 'package:climate/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:climate/services/location.dart';
import 'package:http/http.dart' as http;


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocation();
    print('This line of code is triggered');

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
    final Uri uri = Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=eaad9201c4ac58dcfd09e65779215274');
    http.Response response = await http.get(uri);
    print(response.body);
    print(response.statusCode);

    if(response.statusCode == 200)
      {
        String data = response.body;
        print(data);
      }
    else
      {
        print(response.statusCode);
      }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return const Scaffold();
  }
}



