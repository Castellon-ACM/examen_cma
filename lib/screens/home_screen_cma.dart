import 'package:examen_cma/screens/screen_cma.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: FlutterLogo(
                size: 400,
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => const SigninScreen());
                  Navigator.push(context,route);
                },
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
                const SizedBox(height: 20,),
            const ElevatedButton(
                onPressed: null,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
