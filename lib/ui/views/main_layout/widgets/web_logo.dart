import 'package:amala_blog/ui/common/app_shared_style.dart';
import 'package:amala_blog/ui/views/main_layout/main_layout_viewmodel.dart';
import 'package:flutter/material.dart';

class WebLogo extends StatelessWidget {
  final MainLayoutViewModel viewModel;
  const WebLogo({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => viewModel.toHome(),
      child: Text(
        'Amala App Infaq',
        style: ktsBodyLarge.copyWith(
            fontSize: 20, fontWeight: FontWeight.w800, fontFamily: "Poppins"),
      ),
    );
  }
}
