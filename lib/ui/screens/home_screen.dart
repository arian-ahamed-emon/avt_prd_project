import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Click on 'Start' button and start your earning",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          Container(
            height: 370,
            width: 450,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Start'),
          ),
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "Developed by: 'Arian Ahamed Emon'",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
