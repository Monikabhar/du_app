import 'package:flutter/material.dart';
import 'package:newloginpage/ui/EVENTS.dart';
import 'package:newloginpage/ui/MDUNEWS.dart';
import 'package:newloginpage/ui/Result.dart';
import 'package:newloginpage/ui/Sign_Up.dart';
import 'package:newloginpage/ui/Study_Material.dart';
import 'package:newloginpage/ui/login.dart';
import 'package:newloginpage/ui/UMC.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginView()));

    // setState(() {
    //
    //   _counter++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Image(image: NetworkImage(
              "https://www.collegiateparent.com/wp-content/uploads/2022/08/AdobeStock_429176281.jpg"),
              height: 200,
              width: 250),
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              "Go to new screen",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      //floatingActionButton: const Icon(Icons.add), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: ElevatedButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        =>
            Sign_Up())
        );
      }, child: Text("LOGIN"),),
    );
  }
}
