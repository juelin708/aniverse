import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset('images/logo.png', height: 200),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1500),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 238, 63, 121),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1700),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 243, 143, 176)),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 251, 205, 220),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromARGB(
                                              176, 243, 143, 176)))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Username",
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade700)),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade700)),
                              ),
                            )
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1700),
                      child: Center(
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Color.fromRGBO(230, 121, 176, 1)),
                              )))),
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1900),
                      child: MaterialButton(
                        onPressed: () {},
                        color: const Color.fromARGB(255, 207, 39, 123),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: 50,
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: Center(
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Create Account",
                                style: TextStyle(
                                    color: Color.fromRGBO(230, 121, 176, 1)),
                              )))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
