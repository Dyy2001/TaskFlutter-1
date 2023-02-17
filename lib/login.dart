import 'package:flutter/material.dart';
import 'package:task_1_flutter/home.dart';
import 'package:task_1_flutter/regis.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  "Login Page",
                  style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen),
                ),
                const SizedBox(
                  height: 45,
                ),
                Image.asset(
                  'gambar/udacoding.png',
                  height: 250, // set tinggi gambar menjadi 100 pixel
                  width: 250, // set lebar gambar menjadi 100 pixel
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(350, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightGreen)),
                  //TextStyle: Te
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(350, 50)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrasiPage()));
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.lightGreen),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
