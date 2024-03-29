// ignore_for_file: use_build_context_synchronously, file_names

import 'package:flutter/material.dart';
import 'package:health/main.dart';
import 'package:health/widget/bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  final bool _isDataMatched = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/ph1.jpg'), fit: BoxFit.cover)),
            child: const Padding(
              padding: EdgeInsets.only(top: 60, left: 22),
              child: Text(
                '𝐆𝐤 𝐏𝐡𝐚𝐫𝐦𝐚',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  image: DecorationImage(
                      image: AssetImage('assets/ph2.png'), fit: BoxFit.cover)),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.check,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Gmail',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(184, 23, 54, 1)),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Value is Empty';
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(184, 23, 54, 1)),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Value is Empty';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Visibility(
                              visible: !_isDataMatched,
                              child: const Text(
                                'Username password doesnot match',
                                style: TextStyle(color: Colors.red),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'forgot password?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color.fromRGBO(40, 21, 55, 1)),
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(184, 23, 54, 1),
                              Color.fromRGBO(40, 21, 55, 1),
                            ])),
                        child: GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              checkLogin(context);
                            } else {
                              // print('Data is empty');
                            }
                            checkLogin(context);
                          },
                          child: Container(
                            height: 53,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.white),
                            ),
                            child: const Center(
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Dont have account',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void checkLogin(BuildContext ctx) async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    if (username == 'gk' && password == '666999') {
      // print('Username pass match');

      final sharedperfer = await SharedPreferences.getInstance();
      await sharedperfer.setBool(save_key_name, true);
      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => const Home()));
    } else {
      const errorMessage = 'Username password doesnot match';

      showDialog(
          context: ctx,
          builder: (ctx1) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text(errorMessage),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(ctx1).pop();
                    },
                    child: const Text('close'))
              ],
            );
          });
    }
  }
}
