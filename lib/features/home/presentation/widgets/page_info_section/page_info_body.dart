import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/features/home/presentation/widgets/page_info_section/page_info_custom_container.dart';

class PageInfoBody extends StatelessWidget {
  const PageInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        pageInfoList.length,
        (index) => PageInfoCustomContainer(pageIndex: index),
      ),
    );
  }
}
