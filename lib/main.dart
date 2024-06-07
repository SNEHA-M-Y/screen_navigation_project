import 'package:flutter/material.dart';
import 'package:screen_navigation_project/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen Navigation Project',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 134, 238, 126),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 199, 218, 223),
        title: Text("Home Page"),
        leading: Icon(
          Icons.home,
          color: Colors.blue,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen1(),
                    ),
                  );
                },
                child: Text("Go to Screen1"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
