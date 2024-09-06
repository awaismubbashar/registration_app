import 'package:flutter/material.dart';
import 'package:registration_app/registration/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  TextFormField(
                    validator: (text) {
                      if (!(text!.contains('@')) && text.isNotEmpty) {
                        return "Enter a valid email address!";
                      }
                      return null;
                    },
                    controller: _emailController,
                    autovalidateMode: AutovalidateMode.always,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.9),
                      ),
                      labelText: 'Email',
                      errorText: _validate ? 'Please enter email' : null,
                      labelStyle:
                          const TextStyle(color: Colors.grey, fontSize: 20.0),
                      suffixStyle: const TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: (text) {
                      if (!(text!.length > 5) && text.isNotEmpty) {
                        return "Enter password minimum 6 characters";
                      }
                      return null;
                    },
                    controller: _passwordController,
                    decoration: const InputDecoration(
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
                    onPressed: () {
                      setState(() {
                        _validate = _emailController.text.isEmpty &&
                            _passwordController.text.isEmpty;
                      });
                    },
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account? ',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()),
                            );
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.w700),
                          ),
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
