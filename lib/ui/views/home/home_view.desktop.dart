import 'package:amala_blog/ui/views/home/widgets/home_banner.dart';
import 'package:amala_blog/ui/views/home/widgets/popular_articles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Banner / Header
              HomeBanner(),
              SizedBox(
                height: 16.0,
              ),

              //Popular articles
              PopularArticles(),
              SizedBox(
                height: 16.0,
              )

              //List of articles of category 1

              //List of articles of category 2

              //List of articles of category 3
            ],
          ),
        ),
      ),
    );
  }
}
