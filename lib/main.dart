import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:integrate_login/constant/color_constants.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Login Now!',
              style: TextStyle(
                //fontFamily: 'kanit',
                fontSize: 45,
                color: blue_theme,
              ),
            ),
            Divider(
              color: Colors.black54,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(
              height: 60,
            ),
            PrivateKey(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: blue_theme,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 1.5),
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'paste your pubkey',
                  hintStyle: TextStyle(color: Colors.black54),
                  suffixIcon: Icon(Icons.lock),
                ),
                style: TextStyle(fontSize: 20),
                cursorColor: Colors.black,
                keyboardType: TextInputType.multiline,
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class PrivateKey extends StatelessWidget {
  const PrivateKey({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 25),
      child: Text(
        'Pubkey',
        style: TextStyle(
            fontSize: 20,
            color: blue_theme,
            fontWeight: FontWeight.w800),
      ),
    );
  }
}
