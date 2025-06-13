import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';

class CustomWhatIDoContainerBody extends StatelessWidget {
  const CustomWhatIDoContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        AutoSizeText(
          AppStrings.whatIdo,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          maxFontSize: 16,
          minFontSize: 7,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Expanded(
          child: AutoSizeText(
            AppStrings.whatIdoBody,
            minFontSize: 5,
            maxFontSize: 12,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color:
                  BlocProvider.of<ThemeCubit>(context).isDark
                      ? const Color(0xffD1D1CD)
                      : const Color(0xff685D5D),
            ),
          ),
        ),
      ],
    );
  }
}
