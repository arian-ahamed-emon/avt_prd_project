import 'package:avt_prd_project/ui/screens/app_selection_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: Column(
        children: [
          const SizedBox(
            height: 240,
          ),
          const Text(
            'Aviator Predicator',
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              color: Colors.white,
              height: 200,
              width: 450,
              child: Column(
                children: [
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AppSelectionScreen(),
                          ),
                        );
                      },
                      child: const Text('Continue'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
