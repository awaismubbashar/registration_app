import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _validate = false;

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _mobileNumberController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: (text) {
                      if (!(text!.length > 5) && text.isNotEmpty) {
                        return "Enter valid name of more then 5 characters";
                      }
                      return null;
                    },
                    controller: _nameController,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.9),
                      ),
                      errorText: _validate ? 'Please enter name' : null,
                      labelText: 'Name',
                      // errorText: _validate ? 'Please enter name': null,
                      labelStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18.0),
                      suffixStyle: const TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
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
                      errorBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.red, width: 1.9)),
                      labelText: 'Email',
                      errorText: _validate ? 'Please enter email' : null,
                      labelStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18.0),
                      suffixStyle: const TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: (mobileNumber) {
                      if (!(mobileNumber!.length >= 12) &&
                          mobileNumber.isNotEmpty) {
                        return "Enter valid mobile number";
                      }
                      return null;
                    },
                    controller: _mobileNumberController,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.9),
                      ),
                      labelText: 'Mobile Number',
                      errorText:
                          _validate ? 'Please enter mobile number' : null,
                      labelStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18.0),
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
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.9),
                      ),
                      // labelText: 'Password',
                      label: const Text(
                        'Password',
                      ),
                      errorText: _validate ? 'Please enter password' : null,
                      labelStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                    obscureText: true,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: (text) {
                      if (!(text!.length > 5) && text.isNotEmpty) {
                        return "Enter password minimum 6 characters";
                      }
                      return null;
                    },
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1.9),
                      ),
                      // labelText: 'Password',
                      label: const Text(
                        'Confirm Password',
                      ),
                      errorText: _validate ? 'Please enter password' : null,
                      labelStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 40.0),
                  ElevatedButton(
                    onPressed: () {
                      print('regidter clicked');
                      if (_emailController.text.isEmpty) {
                        print('eamil is empty');
                      } else {
                        print(_emailController.text);
                      }
                      setState(() {
                        _validate = _emailController.text.isEmpty &&
                            _nameController.text.isEmpty &&
                            _mobileNumberController.text.isEmpty &&
                            _passwordController.text.isEmpty &&
                            _confirmPasswordController.text.isEmpty;
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
                    child: const Text('REGISTER'),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context, "/");
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
