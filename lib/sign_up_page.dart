import 'package:demo123/animations/fade_animation_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inout_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String id = "sign_up_page";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isNotHide = true;

  TextEditingController controller = TextEditingController(text: "123qwe");

  //function
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("Welcome");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff405DE6).withOpacity(0.7),
            Color(0xff5851D8).withOpacity(0.7),
            Color(0xff833AB4).withOpacity(0.7),
            Color(0xffC13584).withOpacity(0.7),
            Color(0xffE1306C).withOpacity(0.7),
            Color(0xffFD1D1D).withOpacity(0.5),
            Color(0xffF56040).withOpacity(0.7),
            Color(0xffF77737).withOpacity(0.7),
            Color(0xffFCAF45).withOpacity(0.7),
            Color(0xffFFDC80).withOpacity(0.7),
            Color(0xffFFFFFF).withOpacity(0.7),
          ],
        )),
        child: ListView(children: [
          FadeAnimation(
            1,
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  FadeAnimation(
                    1.1,
                    const SizedBox(
                      height: 60,
                    ),
                  ),
                  FadeAnimation(
                    1.2,
                    const Text(
                      "Amazon",
                      style: TextStyle(
                          fontFamily: "Billabong",
                          color: Colors.black,
                          fontSize: 50),
                    ),
                  ),
                  FadeAnimation(
                      1.3,
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              FadeAnimation(
                                1.4,
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        hintText: "Name",
                                        labelStyle:
                                            TextStyle(color: Colors.black)),
                                    validator: (input) => !input!.contains("@")
                                        ? "Plese enter a valid email"
                                        : null,
                                    onSaved: (input) => _email = input!,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.grey.shade200,
                                ),
                                child: TextFormField(
                                    textInputAction: TextInputAction.done,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        hintText: "Password",
                                        labelStyle:
                                            TextStyle(color: Colors.black)),
                                    keyboardType: TextInputType.number,
                                    validator: (input) => input!.length < 6
                                        ? "Must be at least 6 character"
                                        : null,
                                    onSaved: (input) => _password = input!),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              FadeAnimation(
                                1.6,
                                Container(
                                  width: 600,
                                  child: MaterialButton(
                                      child: const Text(
                                        "Log In",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: Colors.red,
                                      onPressed: () {
                                        _doSignIn();
                                      }),
                                ),
                              ),
                              SizedBox(
                                height: 150,
                              ),
                              FadeAnimation(
                                  1.7,
                                  Column(
                                    children: [
                                      FadeAnimation(
                                        1.8,
                                        Row(
                                          children:  [
                                            Text(
                                              "Don't have an accaunt?",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            TextButton(onPressed: (){
                                              Navigator.pushReplacementNamed(context, InputPage.id);
                                            }
                                             , child: Text( "Sign up",
                                            style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          )))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
