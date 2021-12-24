import 'package:flutter/material.dart';
import 'package:flutter_mvp_project/core/init/flavor_injector.dart';
import 'package:flutter_mvp_project/feature/home/view/home_page.dart';
import 'core/init/injection_dependency.dart' as dependencyInjection;

void main() async {
  FlavorInjector.configure(Flavor.PROD);
  await dependencyInjection.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVP ARCHITECTURE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
