import 'package:e_polls/widget/custom_button.dart';
import 'package:e_polls/widget/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorscheme = Theme.of(context).colorScheme;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                CupertinoIcons.back,
                size: 30,
              )),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: colorscheme.surface,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 26,
                      color: colorscheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 6.0,
                      bottom: 20,
                    ),
                    child: Text(
                      "Welcome! Please enter your details.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 16,
                      color: colorscheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 20),
                    child: CustomTextField(
                      label: "johndoe@gmail.com",
                      icon: const Icon(CupertinoIcons.mail),
                      controller: emailController,
                    ),
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16,
                      color: colorscheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                    ),
                    child: CustomTextField(
                      label: "Enter Password",
                      icon: const Icon(CupertinoIcons.padlock),
                      controller: passwordController,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 6.0,
                      bottom: 20,
                    ),
                    child: Text(
                      "Must be at least 8 characters.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                      width: double.infinity,
                      text: "Login",
                      onPressed: () {
                        Navigator.pushNamed(context, '/info_poll1');
                      },
                      backgroundColor: colorscheme.primary,
                      textColor: colorscheme.onPrimary,
                      borderRadius: 15.0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 14),
                      fontSize: 22),
                  Row(
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ));
  }
}
