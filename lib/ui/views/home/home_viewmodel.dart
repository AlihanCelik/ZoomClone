import 'package:zoom_clone/app/app.bottomsheets.dart';
import 'package:zoom_clone/app/app.dialogs.dart';
import 'package:zoom_clone/app/app.locator.dart';
import 'package:zoom_clone/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  int page=0;
  onPageChanged(int page2){
    page=page2;
    notifyListeners();
  }

}
