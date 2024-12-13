import 'package:flutter/material.dart';
import 'package:examen_cma/screens/screen_cma.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        const FlutterLogo(
          size: 400,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: TextFormField(
            autofocus: true,
            initialValue: 'Usuario',
            validator: (value) {
              if (value!.length < 6) {
                return 'Mínimo 6 caracteres';
              }
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.assignment_ind_outlined),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ))),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 20),
          child: TextFormField(
            autofocus: true,
            validator: (value) {
              if (value!.length < 6) {
                return 'Mínimo 6 caracteres';
              }
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                    builder: (context) => const ListViewScreen());
                Navigator.push(context, route);
              },
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                ),
              )),
        ),
      ])),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
