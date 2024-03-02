import 'package:amala_blog/ui/views/home/widgets/construction_articles_carousel.dart';
import 'package:amala_blog/ui/views/home/widgets/home_banner.dart';
import 'package:amala_blog/ui/views/home/widgets/outsourcec_articles_carousel.dart';
import 'package:amala_blog/ui/views/home/widgets/popular_articles.dart';
import 'package:amala_blog/ui/views/home/widgets/public_articles_carousel.dart';
import 'package:amala_blog/ui/views/home/widgets/third_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                //Banner / Header
                HomeBanner(
                  viewModel: viewModel,
                ),
                const Divider(),
                const SizedBox(
                  height: 32.0,
                ),

                //Popular articles
                PopularArticles(
                  viewModel: viewModel,
                ),
                const SizedBox(
                  height: 32.0,
                ),

                const ThirdSectionWidget(),
                const SizedBox(
                  height: 32.0,
                ),
                const Divider(),

                //List of articles of category 1
                PublicArticlesCarousel(viewModel: viewModel),

                //List of articles of category 2
                ConstructionArticlesCarousel(viewModel: viewModel),

                //List of articles of category 3
                OutsourceArtuclesCarousel(viewModel: viewModel)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
