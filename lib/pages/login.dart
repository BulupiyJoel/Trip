import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:trip/pages/index.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your phone number. We will send you a confirmation code here.",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: CountryListPick(
                    theme: CountryTheme(isShowTitle: false, isShowCode: false),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                SizedBox(
                  width: 230,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "+243 000 000 000",
                          border: InputBorder.none),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Text("Don't have an account ? "),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
        child: SizedBox(
          width: 400,
          height: 80,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Index();
                  }));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                )),
          ),
        ),
      ),
    );
  }
}
