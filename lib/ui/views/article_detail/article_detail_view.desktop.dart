import 'package:amala_blog/ui/common/app_constants.dart';
import 'package:amala_blog/ui/common/app_shared_style.dart';
import 'package:amala_blog/ui/common/ui_helpers.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

import 'article_detail_viewmodel.dart';

class ArticleDetailViewDesktop extends ViewModelWidget<ArticleDetailViewModel> {
  const ArticleDetailViewDesktop({super.key});

  @override
  Widget build(BuildContext context, ArticleDetailViewModel viewModel) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: kdDesktopMaxContentWidth,
                          child: Image.network(
                            "https://picsum.photos/600/400",
                            fit: BoxFit.cover,
                          ),
                        ),
                        verticalSpace(10),
                        Text(
                          faker.lorem.sentence(),
                          style: ktsBodyLarge.copyWith(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        verticalSpace(10),
                        Row(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Article written by ${faker.person.name()}",
                                  style: ktsBodyRegular.copyWith(
                                      fontSize: 10.0, color: Colors.blueGrey),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 32.0,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.date_range,
                                  size: 15,
                                  color: Colors.blueGrey,
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  DateFormat("EEEE, dd MMMM yyyy", "id_ID")
                                      .format(faker.date.dateTime()),
                                  style: ktsBodyRegular.copyWith(
                                      fontSize: 10.0, color: Colors.blueGrey),
                                ),
                                const SizedBox(
                                  width: 32.0,
                                ),
                                Text(
                                  "Category: Kategory Artikel",
                                  style: ktsBodyRegular.copyWith(
                                      fontSize: 10.0, color: Colors.blueGrey),
                                )
                              ],
                            )
                          ],
                        ),
                        verticalSpace(10),
                        Text.rich(TextSpan(children: [
                          TextSpan(text: faker.lorem.sentences(5).join(" ")),
                          const TextSpan(text: "\n"),
                          TextSpan(text: faker.lorem.sentences(10).join(" "))
                        ]))
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Artikel Lainya",
                          style: ktsBodyLarge.copyWith(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins"),
                        ),
                        verticalSpaceSmall,
                        const Divider(),
                        Column(
                          children: List.generate(
                              3, (index) => const TopArticleItem()),
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class TopArticleItem extends StatelessWidget {
  const TopArticleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: kdDesktopMaxContentWidth,
          child: Image.network("https://picsum.photos/300"),
        ),
        verticalSpace(8),
        Text(
          faker.lorem.sentence(),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: ktsBodyLarge.copyWith(
              fontSize: 20.0, fontWeight: FontWeight.w700),
        ),
        verticalSpace(8),
        Row(
          children: [
            const Icon(Icons.date_range_sharp),
            horizontalSpaceSmall,
            Text(
              DateFormat("dd MMM yy", "id_ID").format(faker.date.dateTime()),
              style: ktsBodyRegular.copyWith(fontSize: 10),
            )
          ],
        ),
        verticalSpace(8),
        Text(
          faker.lorem.sentences(5).join(" "),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: ktsBodyRegular.copyWith(fontSize: 12),
        ),
        verticalSpaceMedium
      ],
    );
  }
}
