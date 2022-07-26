import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';



void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    print(AppRoutes.initialRoute);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(), 
      onGenerateRoute: AppRoutes.onGenerateRoute
    );
  }
}