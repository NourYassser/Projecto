import 'package:flutter/material.dart';
import 'package:resturant_app/login%20.dart';

import 'home.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 190, 29, 17),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 190, 29, 17),
                  ),
                  hintText: 'First Name',
                )),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 190, 29, 17),
                  ),
                  hintText: 'Last Name',
                )),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 190, 29, 17),
                  ),
                  hintText: 'Email',
                )),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color.fromARGB(255, 190, 29, 17),
                  ),
                  hintText: 'Password',
                )),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color.fromARGB(255, 190, 29, 17),
                  ),
                  hintText: 'Confirm Password',
                )),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 190, 29, 17),
                      padding: const EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const login()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Color.fromARGB(255, 190, 29, 17),
                        ),
                      ),
                    )
                  ],
                )
              ])),
        ),
      ),
    );
  }
}
