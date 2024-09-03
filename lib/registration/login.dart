import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 37.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Please Login to your account',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 30.0),
                  const TextField(
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.9),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 20.0),
                      suffixStyle: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const TextField(
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.9),
                      ),
                      // labelText: 'Password',
                      label: Text(
                        'Password',
                      ),
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 20.0),
                    ),
                    obscureText: true,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6), // <-- Radius
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                      backgroundColor: Colors.lightBlue,
                      // background
                      foregroundColor: Colors.white, // foreground
                    ),
                    child: const Text('LOGIN'),
                  )
                ],
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Row(children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'OR',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Expanded(child: Divider()),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 2),
                            ],
                          ),
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.white38,
                            child: Image.asset(
                              height: 30,
                              width: 30,
                              'assets/facebook.png',
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 2),
                            ],
                          ),
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              height: 30,
                              width: 30,
                              'assets/twitter.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account? ',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
