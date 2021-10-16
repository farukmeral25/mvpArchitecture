import 'package:flutter_mvp_project/feature/domain/entity/entity.dart';

abstract class ListViewContract {
  void onLoadCryptoComplete(List<Entity> items);
  void onLoadCryptoError();
}
