import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weather Forecast"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        body: _getBody(),
      ),
    );
  }
}

Widget _getBody() {
  return SingleChildScrollView(
    child: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            _enterCityName(),
            _cityDetail(),
            _temperatureDetail(),
          ],
        ),
      ),
    ),
  );
}

TextField _enterCityName() {
  return TextField(
    decoration: InputDecoration(
      labelText: 'Enter city name',
      prefixIcon: Icon(
        Icons.search,
        size: 36,
      ),
    ),
  );
}

Widget _cityDetail() {
  return Padding(
    padding: EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Text(
          'Nizhniy Novgorod, RU',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(
          height: 5,
        ),
        Text('Friday, June 18, 2022'),
      ],
    ),
  );
}

Widget _temperatureDetail() {
  return Padding(
    padding: const EdgeInsets.only(
      top: 30,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          size: 120,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              '24 \u2103',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text('Sunny',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                )),
          ],
        )
      ],
    ),
  );
}
