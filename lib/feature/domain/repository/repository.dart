import 'package:flutter_mvp_project/feature/domain/entity/entity.dart';

abstract class Repository {
  Future<List<Entity>> fetchCurrencies();
}
