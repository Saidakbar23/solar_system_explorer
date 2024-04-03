import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APOD extends StatefulWidget {
  const APOD({super.key});

  @override
  State<APOD> createState() => _APODState();
}

class _APODState extends State<APOD> {
  dynamic data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var response = await http.get(Uri.parse(
        'https://api.nasa.gov/planetary/apod?api_key=FuERs9g0AjIuPg8RqLwXuDhThfQUBe9pDffkkCru'));
    data = jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(bottom: 50.0),
        child: Center(
          child: ListView(
            padding: EdgeInsets.only(bottom: 20.0),
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                data['title'],
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Image.network(data['url']),
              SizedBox(height: 20.0),
              Text(
                data['explanation'],
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
