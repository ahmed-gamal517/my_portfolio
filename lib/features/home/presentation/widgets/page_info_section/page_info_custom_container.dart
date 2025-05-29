import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/core/widgets/responsive_text.dart';

class PageInfoCustomContainer extends StatelessWidget {
  const PageInfoCustomContainer({super.key, required this.pageIndex});
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        width: MediaQuery.of(context).size.height * 0.10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.002),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              pageInfoList[pageIndex].logoPath,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(width: MediaQuery.of(context).size.height * 0.01),
            ResponsiveText(
              text: pageInfoList[pageIndex].title,
              baseFontSize: 12,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
