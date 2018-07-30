import 'dart:async';

import 'package:angular/core.dart';

/// Mock service emulating access to a to-do list stored on a server.
@Injectable()
class PodListService {
  List<String> mockTodoList = <String>[];

  Future<List<String>> getPodList() async => mockTodoList;
}
