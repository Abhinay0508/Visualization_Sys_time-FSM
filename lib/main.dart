import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _currentDateTime = DateTime.now();

  String formattedString = "";

  @override
  void initState() {
    getFormattedCurrentTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Current Time is : ",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              formattedString,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void getFormattedCurrentTime() {
    String formattedTime =
        DateFormat("dd MMM, yyyy hh:mm:ss a").format(_currentDateTime);

    setState(() {
      formattedString = formattedTime;
    });
  }
}
