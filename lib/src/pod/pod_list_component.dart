import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'pod_list_service.dart';

@Component(
  selector: 'pod-list',
  styleUrls: ['party_list_component.css'],
  templateUrl: 'party_list_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [const ClassProvider(PodListService)],
)
class PodListComponent implements OnInit {
  final PodListService todoListService;

  List<String> items = [];
  String newTodo = '';

  PodListComponent(this.todoListService);

  @override
  Future<Null> ngOnInit() async {
    items = await todoListService.getPodList();
  }

  void add() {
    items.add(newTodo);
    newTodo = '';
  }

  String remove(int index) => items.removeAt(index);
}
