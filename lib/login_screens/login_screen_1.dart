import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: ListView(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Center(
                      child: Text(
                        'Hello Again!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Center(
                      child: Text(
                        'Welcome  back  you ! ve',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                    Center(
                      child: Text(
                        'been  misssed !',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              InputTextField(
                title: 'Enter Email',
                isTrue: false,
                controller: emailController,
              ),
              const SizedBox(
                height: 20.0,
              ),
              InputTextField(
                title: 'EnterPassword',
                isTrue: true,
                controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomLoginButton(
                buttonColor: Colors.black12,
                title: 'Log in',
                onTap: () {
                  final email = emailController.text;
                  final password = passwordController.text;
                },
              ),
              const SizedBox(height: 40),
              const Text(
                'or continue with',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (() {}),
                    child: Container(
                      height: 55,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.black12),
                      child: Image.asset('add your asset'),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    ' primaryText!',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'secondry text',
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              )
            ])
      ]),
    );
  }
}

class CustomLoginButton extends StatelessWidget {
  final Color? buttonColor;
  final String? title;
  final Function()? onTap;
  const CustomLoginButton(
      {Key? key,
      required this.buttonColor,
      required this.title,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 60,
      width: 375.0,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(title!),
        style: ElevatedButton.styleFrom(
            primary: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}

class InputTextField extends StatelessWidget {
  final String? title;
  final bool? isTrue;

// a custom login input field
  final TextEditingController? controller;
  const InputTextField({
    Key? key,
    required this.title,
    required this.isTrue,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 380.0,
        color: Colors.black12,
        child: TextField(
          style: const TextStyle(color: Colors.grey),
          obscureText: isTrue!,
          textAlign: TextAlign.start,
          autocorrect: false,
          autofocus: true,
          decoration: InputDecoration(
            fillColor: Colors.grey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: title,
            hintStyle: const TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
