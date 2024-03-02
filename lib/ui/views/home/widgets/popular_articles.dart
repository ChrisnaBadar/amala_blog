import 'package:amala_blog/ui/common/app_shared_style.dart';
import 'package:amala_blog/ui/views/home/home_viewmodel.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PopularArticles extends StatelessWidget {
  final HomeViewModel viewModel;
  const PopularArticles({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Popular Articles",
          style: ktsBodyLarge.copyWith(
              fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main article
            Expanded(
              child: InkWell(
                onTap: () => viewModel.toArticleDetailView(articleId: "1"),
                onHover: (val) {},
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      padding: EdgeInsets.all(8),
                      child: Image.network(
                        "https://picsum.photos/500/200",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: 100,
                      child: Text.rich(
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          TextSpan(children: [
                            TextSpan(
                              text: "${faker.lorem.sentence()}: ",
                              style: ktsBodyLarge.copyWith(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blueGrey[900]),
                            ),
                            TextSpan(
                              text: faker.lorem.sentences(5).join(" "),
                              style: ktsBodyLarge.copyWith(
                                  fontSize: 15.0, color: Colors.blueGrey[900]),
                            )
                          ])),
                    ),
                    Container(
                        padding: EdgeInsets.all(8.0),
                        height: 50,
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  faker.person.name(),
                                  style:
                                      ktsBodyRegular.copyWith(fontSize: 10.0),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 32.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.date_range_outlined,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  DateFormat("dd MMMM yyyy", "id_ID")
                                      .format(faker.date.dateTime()),
                                  style:
                                      ktsBodyRegular.copyWith(fontSize: 10.0),
                                )
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),

            //3 Listed Articles
            Expanded(
              child: Container(
                height: 450,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => viewModel.toArticleDetailView(
                            articleId: "${index}"),
                        onHover: (val) {
                          print("hover on article #${index + 1} $val");
                        },
                        child: Container(
                          height: 85,
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            leading: SizedBox(
                              width: 100,
                              child: Image.network(
                                "https://picsum.photos/300",
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text.rich(
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                TextSpan(children: [
                                  TextSpan(
                                    text: "${faker.lorem.sentence()}: ",
                                    style: ktsBodyLarge.copyWith(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blueGrey[900]),
                                  ),
                                  TextSpan(
                                    text: faker.lorem.sentences(5).join(" "),
                                    style: ktsBodyLarge.copyWith(
                                        fontSize: 15.0,
                                        color: Colors.blueGrey[900]),
                                  )
                                ])),
                            subtitle: Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      faker.person.name(),
                                      style: ktsBodyRegular.copyWith(
                                          fontSize: 10.0),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 32.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.date_range_outlined,
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      DateFormat("dd MMMM yyyy", "id_ID")
                                          .format(faker.date.dateTime()),
                                      style: ktsBodyRegular.copyWith(
                                          fontSize: 10.0),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ],
    );
  }
}
