import 'package:amala_blog/ui/common/app_colors.dart';
import 'package:amala_blog/ui/common/app_shared_style.dart';
import 'package:amala_blog/ui/common/ui_helpers.dart';
import 'package:amala_blog/ui/views/home/home_viewmodel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PublicArticlesCarousel extends StatefulWidget {
  final HomeViewModel viewModel;
  const PublicArticlesCarousel({super.key, required this.viewModel});

  @override
  State<PublicArticlesCarousel> createState() => _PublicArticlesCarouselState();
}

class _PublicArticlesCarouselState extends State<PublicArticlesCarousel> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            "Artikel Umum",
            style: ktsBodyLarge.copyWith(
                fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
        ),
        CauseListCarousel(controller: _controller, viewModel: widget.viewModel),
        const Divider()
      ],
    );
  }
}

class CauseListCarousel extends StatelessWidget {
  final CarouselController controller;
  final HomeViewModel viewModel;
  // final ArticlesModel articlesModel;

  const CauseListCarousel(
      {super.key, required this.controller, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    final List<Widget> _items = List.generate(
        5,
        (index) => ArticleItem(
            title: faker.lorem.sentence(),
            imgLink: "https:picsum.photos/10$index",
            viewModel: viewModel,
            author: faker.person.name(),
            date:
                DateFormat("dd MMM yy", "id_ID").format(faker.date.dateTime()),
            highlight: faker.lorem.sentences(5).join(" ")));
    return CarouselSlider(
      carouselController: controller, // Assign the controller here
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: false,
        viewportFraction:
            getValueForScreenType(context: context, mobile: 1, desktop: .2),
        aspectRatio:
            getValueForScreenType(context: context, mobile: 1, desktop: 2.5),
        initialPage: 1,
        autoPlayInterval: const Duration(seconds: 5),
        enableInfiniteScroll: true,
        scrollPhysics: const PageScrollPhysics(), // to enable snapping
      ),
      items: _items
          .map((item) => Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: getValueForScreenType(
                        context: context,
                        mobile: MediaQuery.of(context).size.width * 0.9,
                        desktop: MediaQuery.of(context).size.width * 0.25),
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: item,
                  );
                },
              ))
          .toList(),
    );
  }
}

class ArticleItem extends StatelessWidget {
  final String title;
  final String imgLink;
  final String author;
  final String date;
  final String highlight;
  final HomeViewModel viewModel;

  const ArticleItem(
      {Key? key,
      required this.title,
      required this.imgLink,
      required this.author,
      required this.date,
      required this.highlight,
      required this.viewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
            // Image or content goes here
            child: Image.network(
              imgLink,
              fit: BoxFit.cover,
            ),
          ),
          Text(title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: ktsBodyLarge.copyWith()),
          verticalSpace(10),
          Row(
            children: [
              const Icon(Icons.av_timer_outlined),
              Text(
                date,
                style:
                    ktsBodyRegular.copyWith(fontSize: 12, color: kcMediumGrey),
              )
            ],
          ),
          verticalSpace(10),
          Text(
            highlight,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: ktsBodyRegular.copyWith(color: kcMediumGrey),
          ),
          TextButton(onPressed: () {}, child: const Text("Read More.."))
        ],
      ),
    );
  }
}
