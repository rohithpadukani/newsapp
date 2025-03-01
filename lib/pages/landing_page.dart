import 'package:flutter/material.dart';
import 'package:flutter_news/pages/login.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 3.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/business.jpeg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.7,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'News from around the\n         world for you',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Best time to read, take your time to read \n        a little more of this world',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  elevation: 3.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
