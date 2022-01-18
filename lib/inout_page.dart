import 'package:demo123/animations/fade_animation_page.dart';
import 'package:demo123/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  static const String id = "inout_page";

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xff405DE6).withOpacity(0.7),
            const Color(0xff5851D8).withOpacity(0.7),
            const Color(0xff833AB4).withOpacity(0.7),
            const Color(0xffC13584).withOpacity(0.7),
            const Color(0xffE1306C).withOpacity(0.7),
            const Color(0xffFD1D1D).withOpacity(0.5),
            const Color(0xffF56040).withOpacity(0.7),
            const Color(0xffF77737).withOpacity(0.7),
            Color(0xffFCAF45).withOpacity(0.7),
            Color(0xffFFDC80).withOpacity(0.7),
            Color(0xffFFFFFF).withOpacity(0.7),
          ],
        )),
        child: ListView(children: [

          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                FadeAnimation(
                  1.5,
                   Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: controller,
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.phone,
                      //password uchun invisibility
                      obscureText: isNotHide,
                      obscuringCharacter: "*",
                      onSubmitted: (text) {
                        print("Submitted text $text");
                      },

                      onChanged: (Text) {},
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),

                          // text oxiridagi icon
                          suffixIcon: FadeAnimation(
                            1.7,
                             IconButton(
                              icon: Icon(
                                isNotHide
                                    ? Icons.visibility_off_outlined
                                    : Icons.remove_red_eye_outlined,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  isNotHide = !isNotHide;
                                });
                              },
                            ),
                          )),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 150,
                ),
                const Text(
                  "Amazon",
                  style: TextStyle(
                      fontFamily: "Billabong",
                      color: Colors.black,
                      fontSize: 50),
                ),
                Column(
                  children: [
                    FadeAnimation(
                      1.8,
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                        ),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              hintText: "Name",
                              labelStyle: TextStyle(color: Colors.black)),
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
                    FadeAnimation(
                      1.9, Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                        ),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              hintText: "Email",
                              labelStyle: TextStyle(color: Colors.black)),
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
                    FadeAnimation(
                      2, Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                        ),
                        child: TextFormField(
                            textInputAction: TextInputAction.done,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                hintText: "Password",
                                labelStyle: TextStyle(color: Colors.black)),
                            keyboardType: TextInputType.number,
                            validator: (input) => input!.length < 6
                                ? "Must be at least 6 character"
                                : null,
                            onSaved: (input) => _password = input!),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                      2.1, Container(
                        width: 600,
                        child: MaterialButton(
                            child: const Text(
                              "Sign up",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.red,
                            onPressed: () {
                              _doSignIn();
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    FadeAnimation(
                      2.2, Row(
                        children: [
                          Text(
                            "Already have an accaunt?",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, SignUpPage.id);
                            },
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
