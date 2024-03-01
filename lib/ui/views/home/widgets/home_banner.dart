import 'package:amala_blog/ui/common/app_constants.dart';
import 'package:amala_blog/ui/common/app_shared_style.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kdDesktopMaxContentWidth,
      height: (kdDesktopMaxContentWidth / 16) * 5,
      color: Colors.blue,
      child: Row(
        children: [
          //image
          SizedBox(
            width: (kdDesktopMaxContentWidth - 20) * .5,
            child: Image.network(
              "https://picsum.photos/200",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: (kdDesktopMaxContentWidth - 20) * .5,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Category
                Text(
                  "Article Umum",
                  style: ktsBodyRegular.copyWith(
                      fontSize: 10, color: Colors.white),
                ),
                //Title
                Text(
                  faker.lorem.sentence(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: ktsBodyLarge.copyWith(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          faker.person.name(),
                          style: ktsBodyRegular.copyWith(
                              fontSize: 10.0, color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 128.0,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.date_range,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          DateFormat("dd MMMM yyyy", "id_ID")
                              .format(faker.date.dateTime()),
                          style: ktsBodyRegular.copyWith(
                              fontSize: 10.0, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  faker.lorem.sentences(10).join(" "),
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: ktsBodyRegular.copyWith(
                      fontSize: 15, color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Read More...",
                      style: ktsBodyRegular.copyWith(
                          fontSize: 12.0, color: Colors.white),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
