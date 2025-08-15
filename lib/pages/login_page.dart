import 'package:flutter/material.dart';
import 'package:greenkeeper_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/truck_bg.jpg", fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "password",
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(120,40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
