import 'package:amala_blog/ui/common/app_colors.dart';
import 'package:amala_blog/ui/common/app_constants.dart';
import 'package:amala_blog/ui/common/app_shared_style.dart';
import 'package:amala_blog/ui/common/ui_helpers.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ThirdSectionWidget extends StatelessWidget {
  const ThirdSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        width: kdDesktopMaxContentWidth,
        height: 400,
        child: Stack(
          children: [
            Image.network(
              "httpS://picsum.photos/1280/768",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              color: kcPrimaryColorDark.withOpacity(.8),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    faker.lorem.sentence(),
                    style: ktsBodyLarge.copyWith(
                        color: kcVeryLightGrey, fontWeight: FontWeight.w700),
                  ),
                  verticalSpace(10),
                  Text(
                    faker.lorem.sentences(2).join(" "),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: ktsBodyLarge.copyWith(color: kcVeryLightGrey),
                  ),
                  verticalSpace(10),
                  Text(
                    faker.lorem.sentences(5).join(" "),
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                    style: ktsBodyRegular.copyWith(color: kcVeryLightGrey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
