import 'package:fakestore/main.dart';
import 'package:fakestore/sign_up.dart';
import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  String? email;

  //bool _isObscure = true;
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
          automaticallyImplyLeading: false

        // title: const Text('First Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Shopping',
                    style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              SizedBox(height: 20),
              TextFormField(
                onChanged: (newValue) {
                  email = newValue;
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.email,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              TextFormField(
                controller: passwordController,
                //obscureText: _isObscure,
                decoration: const InputDecoration(
                  //suffixIcon: IconButton(icon:Icon(Icons.done), onPressed: () {_isObscure==true? false: true;},),
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.password,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 12),
                child: Container(
                  height: 2.0,
                  width: 350.0,
                  color: Colors.teal,
                ),
              ),
              Center(
                child: Text('Forgot Password?'),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(18),
                    width: 270,
                    child: Text('Sign In', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(7)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('doesn\'t have account?'),
                  TextButton(
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 18, color: Colors.teal),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SecondScreen();
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
              const SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 12),
                child: Container(
                  height: 2.0,
                  width: 350.0,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// LIFO
// FILO
