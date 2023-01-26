import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';




class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String _email, _password;
  bool _loading = false;

  void _login() async {
    setState(() {
      _loading = true;
    });
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
          email: _email,
          password: _password
      )) as User;
      if (user != null) {
        // Navigate to another screen upon successful login
        Navigator.pushReplacementNamed(context, '/home');
      }
    } catch (e) {
      // Handle error
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Invalid email or password"),
          )
      );
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _loading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : Column(
        children: <Widget>[
          // Already made login page UI elements
          // such as TextFields, logos etc
          SizedBox(height: 20),
          TextButton(
            onPressed: _login,
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
