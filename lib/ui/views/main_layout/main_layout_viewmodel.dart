import 'package:amala_blog/app/app.locator.dart';
import 'package:amala_blog/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MainLayoutViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();

  Future<void> toHome() async {
    await _routerService.navigateToHomeView();
  }

  Future<void> toCauses() async {}

  Future<void> toPortofolio() async {}
}
