import 'package:examen_cma/screens/screen_cma.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
   final options = const['Pistas', 'Monitores', 'Reservas'];
  const ListViewScreen({super.key});
  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ){
        return AlertDialog(
          title: const Text('Aviso'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(35)),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('El sistema de reservas está deshabilitado en estos momentos'),
              SizedBox(height: 20,),
              FlutterLogo( size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar'))
          ],
        );
      }
      );
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter App'),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 70.0),
          child: CircleAvatar(
          maxRadius: 20,
          backgroundImage: NetworkImage('https://sm.ign.com/t/ign_es/news/g/george-rr-/george-rr-martin-was-out-of-the-loop-in-later-game-of-throne_e9vf.h720.jpg'),
         ),
        )
      ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('Pistas'),
            onTap: () {
              final route = MaterialPageRoute(
                    builder: (context) => const PistasScreen());
                Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('Monitores'),
            onTap: () {
              final route = MaterialPageRoute(
                    builder: (context) => const MonitoresScreen());
                Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: Icon(Icons.accessible_forward),
            title: Text('Reservas'),
            onTap: () => displayDialog(context) , 
            
          ),
        ]
      )
    );
  }
}