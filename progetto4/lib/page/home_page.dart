import 'package:flutter/material.dart';
import 'package:progetto4/component/city_weather.dart';
import 'package:progetto4/model/city_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: weatherData.length,
        itemBuilder: (context, index) => CityWeather(weatherData[index]),
      ),
    );
  }
}
