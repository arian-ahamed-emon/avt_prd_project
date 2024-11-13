import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String? result;
  bool isLoading = false;
  bool isDone = false;

  Future<void> fetchResult() async {
    setState(() {
      isLoading = true;
      isDone = false;
    }
    );
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      result = "1.0x"; // Replace with actual API response data
      isLoading = false;
      isDone = true;
    });
  }

  void reset() {
    setState(() {
      result = null;
      isDone = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Text(
              "Click on 'Start' button and start your earning",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/logo.png',
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 20),
            // Outer Circle
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red, width: 4), // Outer border
              ),
              alignment: Alignment.center,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.red, width: 4), // Inner border
                ),
                alignment: Alignment.center,
                child: isLoading
                    ? const CircularProgressIndicator() // Show loading spinner while fetching
                    : Text(
                  result ?? "0.0x",
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: isDone ? reset : fetchResult,
              child: Text(isDone ? 'Done' : 'Start'),
            ),
            const SizedBox(height: 40),
            const Text(
              "Developed by: 'Arian Ahamed Emon'",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
