import 'package:closet/screens/main_home_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void mainHomeScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return MainHomeScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Column(
        children: [
          Center(
            child: FloatingActionButton(
                child: const Text("Login"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHomeScreen()));
                }),
          ),
          Row(
            children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
