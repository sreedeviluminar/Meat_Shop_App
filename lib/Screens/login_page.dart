import 'package:flutter/material.dart';

import 'category_page/views/category_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black),
              ),
              heightFactor: 2,
            ),
            Text(
              "Welcome back! Login with your credentials",
              style: TextStyle(fontSize: 15, color: Colors.black45),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_box_sharp),
                    hintText: "Email ID",
                    labelText: 'Email ID',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.next,
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@')) {
                    return 'Enter a valid Email ID';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.visibility_off),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(
                          showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                        )),
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.done,
                validator: (Password) {
                  if (Password!.isEmpty || Password.length < 6) {
                    return "Enter a valid Password, length should be greater than 6";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shadowColor: Colors.green[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            TextButton(
              child: Text("Do you have an account? Sign Up",
                  style: TextStyle(fontSize: 15, color: Colors.black45)),
              onPressed: () { },
            ),
          ],
        ),
      ),
    );
  }
}
