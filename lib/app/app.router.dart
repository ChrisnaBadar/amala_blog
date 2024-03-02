// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i8;
import 'package:stacked/stacked.dart' as _i7;
import 'package:stacked_services/stacked_services.dart' as _i6;

import '../ui/views/article_detail/article_detail_view.dart' as _i4;
import '../ui/views/home/home_view.dart' as _i3;
import '../ui/views/main_layout/main_layout_view.dart' as _i1;
import '../ui/views/startup/startup_view.dart' as _i5;
import '../ui/views/unknown/unknown_view.dart' as _i2;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i6.StackedService.navigatorKey);

class StackedRouterWeb extends _i7.RootStackRouter {
  StackedRouterWeb({_i8.GlobalKey<_i8.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainLayoutViewRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainLayoutView(),
      );
    },
    UnknownViewRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.UnknownView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ArticleDetailViewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ArticleDetailViewArgs>(
          orElse: () => ArticleDetailViewArgs(
              articleId: pathParams.getString('articleId')));
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.ArticleDetailView(
          key: args.key,
          articleId: args.articleId,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    StartupViewRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.StartupView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          MainLayoutViewRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              HomeViewRoute.name,
              path: '',
              parent: MainLayoutViewRoute.name,
            ),
            _i7.RouteConfig(
              ArticleDetailViewRoute.name,
              path: 'article-detail/:articleId',
              parent: MainLayoutViewRoute.name,
            ),
            _i7.RouteConfig(
              StartupViewRoute.name,
              path: '',
              parent: MainLayoutViewRoute.name,
            ),
          ],
        ),
        _i7.RouteConfig(
          UnknownViewRoute.name,
          path: '/404',
        ),
        _i7.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.MainLayoutView]
class MainLayoutViewRoute extends _i7.PageRouteInfo<void> {
  const MainLayoutViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainLayoutViewRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainLayoutView';
}

/// generated route for
/// [_i2.UnknownView]
class UnknownViewRoute extends _i7.PageRouteInfo<void> {
  const UnknownViewRoute()
      : super(
          UnknownViewRoute.name,
          path: '/404',
        );

  static const String name = 'UnknownView';
}

/// generated route for
/// [_i3.HomeView]
class HomeViewRoute extends _i7.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i4.ArticleDetailView]
class ArticleDetailViewRoute extends _i7.PageRouteInfo<ArticleDetailViewArgs> {
  ArticleDetailViewRoute({
    _i8.Key? key,
    required String articleId,
  }) : super(
          ArticleDetailViewRoute.name,
          path: 'article-detail/:articleId',
          args: ArticleDetailViewArgs(
            key: key,
            articleId: articleId,
          ),
          rawPathParams: {'articleId': articleId},
        );

  static const String name = 'ArticleDetailView';
}

class ArticleDetailViewArgs {
  const ArticleDetailViewArgs({
    this.key,
    required this.articleId,
  });

  final _i8.Key? key;

  final String articleId;

  @override
  String toString() {
    return 'ArticleDetailViewArgs{key: $key, articleId: $articleId}';
  }
}

/// generated route for
/// [_i5.StartupView]
class StartupViewRoute extends _i7.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '',
        );

  static const String name = 'StartupView';
}

extension RouterStateExtension on _i6.RouterService {
  Future<dynamic> navigateToMainLayoutView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MainLayoutViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToUnknownView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToArticleDetailView({
    _i8.Key? key,
    required String articleId,
    void Function(_i7.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      ArticleDetailViewRoute(
        key: key,
        articleId: articleId,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToStartupView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMainLayoutView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MainLayoutViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithUnknownView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithArticleDetailView({
    _i8.Key? key,
    required String articleId,
    void Function(_i7.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      ArticleDetailViewRoute(
        key: key,
        articleId: articleId,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }
}
