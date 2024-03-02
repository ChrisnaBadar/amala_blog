import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'article_detail_view.desktop.dart';
import 'article_detail_view.tablet.dart';
import 'article_detail_view.mobile.dart';
import 'article_detail_viewmodel.dart';

class ArticleDetailView extends StackedView<ArticleDetailViewModel> {
  @pathParam
  final String articleId;
  const ArticleDetailView({super.key, @pathParam required this.articleId});

  @override
  Widget builder(
    BuildContext context,
    ArticleDetailViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const ArticleDetailViewMobile(),
      tablet: (_) => const ArticleDetailViewTablet(),
      desktop: (_) => const ArticleDetailViewDesktop(),
    );
  }

  @override
  ArticleDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ArticleDetailViewModel();
}
