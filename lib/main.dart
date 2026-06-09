import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloWorldPage(),
    );
  }
}

class HelloWorldPage extends StatefulWidget {
  const HelloWorldPage({super.key});

  @override
  State<HelloWorldPage> createState() => _HelloWorldPageState();
}

class _HelloWorldPageState extends State<HelloWorldPage> {
  Color backgroundColor = Colors.white;
  double fontSize = 30;

  void changeBackgroundColor() {
    setState(() {
      backgroundColor = backgroundColor == Colors.white
          ? Colors.lightBlue
          : Colors.white;
    });
  }

  void increaseFontSize() {
    setState(() {
      fontSize += 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: const Text('Hello World App')),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: changeBackgroundColor,
            heroTag: "color",
            child: const Icon(Icons.color_lens),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: increaseFontSize,
            heroTag: "font",
            child: const Icon(Icons.text_increase),
          ),
        ],
      ),
    );
  }
}
