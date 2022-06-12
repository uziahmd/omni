// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'navbar.dart';

class Stream_m extends StatefulWidget {
  const Stream_m({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _StreamState createState() => _StreamState();
}

class _StreamState extends State<Stream_m> {
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
                'Cameras are active >',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Orator', fontSize: 28),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/images/stream.jpg'),
          ],
        ),
      ),
    );
  }
}
