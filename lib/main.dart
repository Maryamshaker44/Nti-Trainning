import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _i = 0;

  void _increment() {
    setState(() {
      _i++;
    });
  }

  void _decrement() {
    setState(() {
      _i--;
    });
  }

  void _reset() {
    setState(() {
      _i = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          backgroundColor: Colors.blueAccent,
          titleTextStyle: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Counter",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '$_i',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              IconButton(
                  onPressed: _increment,
                  icon: const Icon(
                    Icons.add,
                    size: 25,
                  ),),
              const SizedBox(height: 20),
              IconButton(
                  onPressed: _decrement,
                  icon: const Icon(
                    Icons.remove,
                    size: 25,
                  )),
              const SizedBox(height: 20),
              IconButton(
                  onPressed: _reset,
                  icon: const Icon(
                    Icons.repeat,
                    size: 25,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
