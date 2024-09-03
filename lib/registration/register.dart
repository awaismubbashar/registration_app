import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 37.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Please enter detail to register',
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
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
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
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                      suffixStyle: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.9),
                      ),
                      labelText: 'Mobile Number',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
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
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                    obscureText: true,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.9),
                      ),
                      // labelText: 'Password',
                      label: Text(
                        'Confirm Password',
                      ),
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                    obscureText: true,
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
                    child: const Text('REGISTER'),
                  )
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
