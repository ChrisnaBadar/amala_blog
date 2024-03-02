import 'package:amala_blog/app/app.locator.dart';
import 'package:amala_blog/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();

  Future<void> toArticleDetailView({required String articleId}) async {
    await _routerService.navigateToArticleDetailView(articleId: articleId);
  }
}
