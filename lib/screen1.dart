import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(96, 231, 125, 125),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 150, 207, 236),
        title: Text(
          "Screen 1",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go to Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
