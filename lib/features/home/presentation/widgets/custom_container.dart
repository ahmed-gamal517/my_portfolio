import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, this.child, this.height, this.padding});
  final Widget? child;
  final double? height;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color:
            BlocProvider.of<ThemeCubit>(context).isDark
                ? const Color(0xff000000)
                : Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
      ),
      child: child,
    );
  }
}
