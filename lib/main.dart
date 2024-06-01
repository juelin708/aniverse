import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the login page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AniVerse',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(230, 121, 176, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.place, color: Colors.red)),
            backgroundColor: const Color.fromARGB(255, 205, 245, 237),
            title: Image.asset('images/logo.png', height: 150),
            centerTitle: true,
            actions: [
              Container(
                padding: const EdgeInsets.only(right: 5),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
              ),
            ]),
        body: const Button());
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Login Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
        ),
      ),
    );
  }
}
