// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'navbar.dart';
import 'stream.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSwitched = false;
  bool isMSwitched = false;
  bool isCSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/top_logo.png',
              scale: 17,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: const Text(
                'Welcome Broski',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SamsungSans-Bold',
                    fontSize: 32),
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: const Text(
                'Monitoring is active >',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Orator', fontSize: 17),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Center(
              child: Container(
                height: 120,
                width: 250,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.sensors_rounded,
                            size: 50, color: Colors.white),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Stream()));
                          },
                          child: Text(
                            ' CCTV Cameras',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                    Switch(
                      value: isCSwitched,
                      onChanged: (value) {
                        setState(() {
                          isCSwitched = value;
                        });
                      },
                      inactiveTrackColor: Colors.blueGrey,
                      inactiveThumbColor: Colors.grey,
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 120,
                width: 250,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.mic, size: 50, color: Colors.white),
                        Text(
                          ' Sound Sensors',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      inactiveTrackColor: Colors.blueGrey,
                      inactiveThumbColor: Colors.grey,
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 120,
                width: 250,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(Icons.sensors_rounded,
                            size: 50, color: Colors.white),
                        Text(
                          ' Motion Sensors',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                    Switch(
                      value: isMSwitched,
                      onChanged: (value) {
                        setState(() {
                          isMSwitched = value;
                        });
                      },
                      inactiveTrackColor: Colors.blueGrey,
                      inactiveThumbColor: Colors.grey,
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
