import 'package:angular/angular.dart';

import 'src/pod/party/party_list_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [PodListComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
