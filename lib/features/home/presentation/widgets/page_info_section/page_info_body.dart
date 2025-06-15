import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/features/home/presentation/view_model/app_cubit/app_cubit.dart';
import 'package:my_portofolio/features/home/presentation/view_model/app_cubit/app_state.dart';
import 'package:my_portofolio/features/home/presentation/widgets/page_info_section/page_info_custom_container.dart';

class PageInfoBody extends StatelessWidget {
  const PageInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Column(
          children: List.generate(
            pageInfoList.length,
            (index) => PageInfoCustomContainer(
              pageIndex: index,
              isPressed: index == BlocProvider.of<AppCubit>(context).currPage,
            ),
          ),
        );
      },
    );
  }
}
