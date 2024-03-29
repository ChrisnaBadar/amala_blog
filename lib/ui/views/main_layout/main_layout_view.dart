import 'package:amala_blog/extensions/hover_extensions.dart';
import 'package:amala_blog/ui/common/app_constants.dart';
import 'package:amala_blog/ui/common/ui_helpers.dart';
import 'package:amala_blog/ui/views/main_layout/widgets/web_logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'main_layout_viewmodel.dart';

const double _kNavbarHeight = 90;

class MainLayoutView extends StackedView<MainLayoutViewModel> {
  const MainLayoutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MainLayoutViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: DefaultTextStyle(
            style: GoogleFonts.openSans(color: const Color(0xff191919)),
            child: SizedBox(
              height: screenHeight(context),
              width: kdDesktopMaxContentWidth,
              child: ListView(
                children: [
                  SizedBox(
                    height: _kNavbarHeight,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: GestureDetector(
                                child: WebLogo(
                                  viewModel: viewModel,
                                ),
                              ).showCursorOnHover,
                            ),
                          ),
                          Expanded(
                            child: getValueForScreenType(
                                context: context,
                                mobile: Container(
                                    alignment: Alignment.centerRight,
                                    child: Container()
                                    // const MenuButtons(),
                                    ),
                                desktop: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    // TextButton(
                                    //     onPressed: () {
                                    //       viewModel.toHome();
                                    //     },
                                    //     child: Text(
                                    //       "Home",
                                    //       style: ktsBodyRegular.copyWith(
                                    //           fontWeight: FontWeight.w800,
                                    //           color: kcPrimaryColorDark),
                                    //     )),
                                    // TextButton(
                                    //     onPressed: () {
                                    //       viewModel.toCauses();
                                    //     },
                                    //     child: Text(
                                    //       "Profile",
                                    //       style: ktsBodyRegular.copyWith(
                                    //           fontWeight: FontWeight.w800,
                                    //           color: kcPrimaryColorDark),
                                    //     )),
                                    // TextButton(
                                    //     onPressed: () {
                                    //       viewModel.toPortofolio();
                                    //     },
                                    //     child: Text(
                                    //       "Portofolio",
                                    //       style: ktsBodyRegular.copyWith(
                                    //           fontWeight: FontWeight.w800,
                                    //           color: kcPrimaryColorDark),
                                    //     )),
                                  ],
                                )),
                          )
                        ]),
                  ),
                  // Main Content
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                      height: screenHeight(context) - _kNavbarHeight,
                    ),
                    child:
                        const NestedRouter(), // 👈 This is where the nested content will render
                  )
                ],
              ),
            )),
      ),
    );
  }

  @override
  MainLayoutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainLayoutViewModel();
}
