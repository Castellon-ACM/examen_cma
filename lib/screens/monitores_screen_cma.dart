import 'package:flutter/material.dart';

class MonitoresScreen extends StatelessWidget {
   
  const MonitoresScreen({Key? key}) : super(key: key);
  
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
      body: const Center(
        child: Column(children: [
          CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://sm.ign.com/t/ign_es/news/g/george-rr-/george-rr-martin-was-out-of-the-loop-in-later-game-of-throne_e9vf.h720.jpg'),
         ),
         CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://sm.ign.com/t/ign_es/news/g/george-rr-/george-rr-martin-was-out-of-the-loop-in-later-game-of-throne_e9vf.h720.jpg'),
         ),
         CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://sm.ign.com/t/ign_es/news/g/george-rr-/george-rr-martin-was-out-of-the-loop-in-later-game-of-throne_e9vf.h720.jpg'),
         ),
         ]
         
      ),
      )
    );
  }
}