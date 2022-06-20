import 'package:flutter/material.dart';
import 'package:manga_reader/widgets/login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(child: Login()),
      ],
    );
  }
}
