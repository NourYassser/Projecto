import 'package:flutter/material.dart';
import 'package:resturant_app/home.dart';
import 'package:resturant_app/sign.dart';

class login extends StatelessWidget {
  const login({super.key});

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
                Image.asset(
                  'images/logo.png',
                  width: 300,
                  height: 300,
                ),
                const Text(
                  'Login',
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
                    Icons.mail,
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
                    Icons.lock,
                    color: Color.fromARGB(255, 190, 29, 17),
                  ),
                  hintText: 'Password',
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
                        )),
                    child: const Text(
                      "Login",
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
                    const Text("don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const signup()));
                      },
                      child: const Text(
                        "Register Now",
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
