import 'package:flutter/material.dart';
import 'package:flutter_news/pages/create_account.dart';
import 'package:flutter_news/pages/home_page.dart';
import 'package:flutter_news/services/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _auth = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () async {
                final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                sharedPreferences.setString('email', _emailController.text);

                dynamic result = await _auth.signInWithEmailAndPassword(
                    _emailController.text, _passwordController.text);
                if (result != null) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage())
                  );
                } else {
                  // print('Error signing in!');
                }
              },
              child: const Text('Login'),
            ),
          const SizedBox(
            height: 30.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CreateAccount(),)
              );
            },
            child: const Text('Create Account'),
          ),
          ],
        ),
      ),
    );
  }
}