import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'article_detail_viewmodel.dart';

class ArticleDetailViewTablet extends ViewModelWidget<ArticleDetailViewModel> {
  const ArticleDetailViewTablet({super.key});

  @override
  Widget build(BuildContext context, ArticleDetailViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, TABLET UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
