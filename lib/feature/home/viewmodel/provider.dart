import 'package:flutter/material.dart';
import 'package:flutter_mvp_project/feature/home/domain/entity/entity.dart';

class Provider extends ChangeNotifier {
  List<Entity> currenciesMOCK = [
    Entity(id: 1, userId: 3, title: "Lorem ipsum dolar sit amet"),
    Entity(id: 2, userId: 4, title: "Torem ipsum dolar sit amet"),
    Entity(id: 3, userId: 2, title: "Sorem ipsum dolar sit amet"),
    Entity(id: 4, userId: 8, title: "Korem ipsum dolar sit amet")
  ];
}
