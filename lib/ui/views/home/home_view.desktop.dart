import 'package:amala_blog/ui/common/app_constants.dart';
import 'package:amala_blog/ui/views/home/widgets/home_banner.dart';
import 'package:amala_blog/ui/views/home/widgets/popular_articles.dart';
import 'package:amala_blog/ui/views/home/widgets/third_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const Scaffold(
      body: SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                //Banner / Header
                HomeBanner(),
                Divider(),
                SizedBox(
                  height: 32.0,
                ),

                //Popular articles
                PopularArticles(),
                SizedBox(
                  height: 32.0,
                ),

                ThirdSectionWidget()

                //List of articles of category 1

                //List of articles of category 2

                //List of articles of category 3
              ],
            ),
          ),
        ),
      ),
    );
  }
}
