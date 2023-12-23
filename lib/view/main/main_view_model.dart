import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  var user = 'Mehmet';

  changeUser(String newName) {
    user = newName;
    notifyListeners();
  }
}
