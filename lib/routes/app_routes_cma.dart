
import 'package:examen_cma/models/models_cma.dart';
import 'package:examen_cma/screens/screen_cma.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home', 
      icon: Icons.house_rounded, 
      name: 'Home Screen', 
      screen: const HomeScreen()),
    MenuOption(
      route: 'signin', 
      icon: Icons.list_alt, 
      name: 'Signin Screen', 
      screen: const SigninScreen()),
      MenuOption(
      route: 'listview', 
      icon: Icons.list_alt, 
      name: 'ListView Screen', 
      screen: const ListViewScreen()),
      MenuOption(
      route: 'pistas', 
      icon: Icons.list_alt, 
      name: 'Pistas Screen', 
      screen: const PistasScreen()),
      MenuOption(
      route: 'monitores', 
      icon: Icons.list_alt, 
      name: 'Monitores Screen', 
      screen: const MonitoresScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for ( final option in MenuOptions ) {
      appRoutes.addAll({option.route : ( BuildContext context ) => option.screen});
    }

    return appRoutes;

  }
  

}