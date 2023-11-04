import 'package:flutter/material.dart';
import 'package:project_inc/views/onboarding_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Welcome to TeslaX",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/tesla.png'),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Continue As?",
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnboardingScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(15.0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromRGBO(53, 85, 235, 1),
                ),
              ),
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'Employee',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnboardingScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(15.0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromRGBO(53, 85, 235, 1),
                ),
              ),
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'HR',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnboardingScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(15.0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromRGBO(53, 85, 235, 1),
                ),
              ),
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'Manager',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
