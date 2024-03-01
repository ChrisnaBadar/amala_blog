import 'package:amala_blog/ui/common/app_constants.dart';
import 'package:amala_blog/ui/common/app_shared_style.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PopularArticles extends StatelessWidget {
  const PopularArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kdDesktopMaxContentWidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //main article
          Container(
            color: Colors.blue,
            width: (kdDesktopMaxContentWidth - 20) * .5,
            child: Column(
              children: [
                SizedBox(
                  height: 400,
                  child: Image.network(
                    "https://picsum.photos/500/200",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  faker.lorem.sentence(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: ktsBodyLarge.copyWith(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.blueGrey[900]),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  faker.lorem.sentences(5).join(" "),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: ktsBodyRegular.copyWith(
                      fontSize: 13, color: Colors.blueGrey[800]),
                )
              ],
            ),
          ),

          //3 Listed Articles
          Container(
            color: Colors.amber,
            width: (kdDesktopMaxContentWidth - 20) * .5,
            height: 400,
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    padding: EdgeInsets.all(8),
                    child: Placeholder(),
                  );
                }),
          )
        ],
      ),
    );
  }
}
