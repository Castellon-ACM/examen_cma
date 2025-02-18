import 'package:flutter/material.dart';

class WidgetPistasScreen extends StatelessWidget {
  final String imageUrl;
  final String? texto;
  const WidgetPistasScreen({super.key, required this.imageUrl, this.texto});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
            FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            //height: 260,
            //fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 2000),
            ),

            if(texto != null)
            
            Container(
              alignment: AlignmentDirectional.center,
            padding: const EdgeInsets.only( top: 10, bottom: 10, right: 20),
            child: 
            Text(texto ?? '')),
            Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextButton(
                  onPressed: () {}, 
                  child: const Text('Reservar')
                ),
              ),
        ],
      ),
    );
  }
}