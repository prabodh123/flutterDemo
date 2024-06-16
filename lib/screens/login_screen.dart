import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration:
                  InputDecoration(labelText: "National ID/Iqama number"),
            ),
            TextField(
              controller: _mobileController,
              decoration: InputDecoration(labelText: "Mobile number"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  if (_usernameController.text == "1" &&
                      _mobileController.text == "2") {
                    Navigator.pushReplacementNamed(context, '/main');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Invalid credentials')),
                    );
                  }
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
