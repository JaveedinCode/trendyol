import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trendyol/widgets/naviagation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton.icon(
            style: const ButtonStyle(
                iconColor: MaterialStatePropertyAll(Colors.black)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationPage(),
                  ));
            },
            icon: const FaIcon(FontAwesomeIcons.arrowRightFromBracket),
            label: const Text(
              'Login',
              style: TextStyle(color: Colors.orange),
            )),
      ),
    );
  }
}
