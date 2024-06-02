import 'package:flutter/material.dart';
import 'package:trip/pages/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                "Embark on a journey like never before with TripMate, your ultimate travel companion. Explore new horizons, create unforgettable memories, and let us guide you through the wonders of the world. Welcome aboard!"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Login();
                      }));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
