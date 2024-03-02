import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'article_detail_viewmodel.dart';

class ArticleDetailViewMobile extends ViewModelWidget<ArticleDetailViewModel> {
  const ArticleDetailViewMobile({super.key});

  @override
  Widget build(BuildContext context, ArticleDetailViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, MOBILE UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
