import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktek/pages/home.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    handleLogin() async {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _header(),
            Form(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 26),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email",
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffD7D7D7)),
                          ),
                          child: TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                                hintText: "Email",
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.email)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 26),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Password",
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          // height: 50,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffD7D7D7)),
                          ),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Password",
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Don't Have an Account?",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          // margin: const EdgeInsets.symmetric(horizontal: ),
                          decoration: BoxDecoration(
                            color: Color(0xff094067),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: TextButton(
                            onPressed: () => handleLogin(),
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _header() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 26),
      height: 200,
      width: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sign In",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
