import 'package:e_polls/widget/custom_button.dart';
import 'package:e_polls/widget/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = "/sign_up";
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
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
              onPressed: () {},
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
                    "Sign Up",
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
                    "Username",
                    style: TextStyle(
                      fontSize: 16,
                      color: colorscheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 20),
                    child: CustomTextField(
                      label: "Username",
                      icon: const Icon(CupertinoIcons.person),
                      controller: usernameController,
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
                      text: "Sign Up",
                      onPressed: () {},
                      backgroundColor: colorscheme.primary,
                      textColor: colorscheme.onPrimary,
                      borderRadius: 15.0,
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                      fontSize: 22)
                ]),
          ),
        ));
  }
}
