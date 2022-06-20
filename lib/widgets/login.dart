import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manga_reader/strings/strings.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Title(
          color: CupertinoColors.black,
          child: const Text(
            'Manga Reader',
            style: TextStyle(fontSize: 32),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: Strings.email,
                hintText: 'Enter a valid email address'),
            controller: emailController,
            autocorrect: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            obscureText: true,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: Strings.password,
                hintText: 'Enter your password'),
            controller: passwordController,
            autocorrect: false,
          ),
        ),
        TextButton(
          onPressed: () => print(
              'email: ${emailController.text}, password: ${passwordController.text}'),
          child: const Text(Strings.login),
        ),
      ],
    );
  }
}
