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
            _weatherDetail(),
            _weekDetail(),
          ],
        ),
      ),
    ),
  );
}

Widget _enterCityName() {
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
    padding: EdgeInsets.only(
      top: 30,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          size: 120,
          color: Colors.yellow[900],
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

Widget _weatherDetail() {
  return Padding(
    padding: EdgeInsets.only(
      top: 30,
    ),
    child: Container(
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _weatherDetailItem(Icons.filter_drama, "12", "km/h"),
          _weatherDetailItem(Icons.outbond_outlined, "48", "%"),
          _weatherDetailItem(Icons.pets_outlined, "98", "count")
        ],
      ),
    ),
  );
}

Widget _weatherDetailItem(IconData icon, String value, String desc) {
  return Column(
    children: [
      Icon(
        icon,
        size: 50,
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      Text(desc)
    ],
  );
}

Widget _weekDetail() {
  return SizedBox(
    height: 120,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _dayItem("Monday"),
        _dayItem("Monday"),
        _dayItem("Monday"),
        _dayItem("Monday"),
      ],
    ),
  );
}

Widget _dayItem(String day) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 170,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            day,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('24 \u2103'),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.wb_sunny,
                size: 50,
                color: Colors.yellow[900],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
