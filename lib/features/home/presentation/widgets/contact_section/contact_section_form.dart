import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/features/home/presentation/view_model/app_cubit/app_cubit.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact_section/custom_contact_section_button.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact_section/custom_contact_section_text_field.dart';

class ContactSectionForm extends StatelessWidget {
  const ContactSectionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: BlocProvider.of<AppCubit>(context).formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            AppStrings.email,
            style: Theme.of(context).textTheme.labelSmall,
            maxFontSize: 20,
            minFontSize: 14,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          CustomContactSectionTextField(
            validator: (p0) {
              if (p0 == null || p0.isEmpty || !p0.contains('@')) {
                return 'Please enter email';
              }
              return null;
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          AutoSizeText(
            AppStrings.subject,
            style: Theme.of(context).textTheme.labelSmall,
            maxFontSize: 20,
            minFontSize: 14,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          CustomContactSectionTextField(
            validator: (p0) {
              if (p0 == null || p0.isEmpty) {
                return 'Please enter subject';
              }
              return null;
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          AutoSizeText(
            AppStrings.message,
            style: Theme.of(context).textTheme.labelSmall,
            maxFontSize: 20,
            minFontSize: 14,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          CustomContactSectionTextField(
            maxLines: 5,
            validator: (p0) {
              if (p0 == null || p0.isEmpty) {
                return 'Please enter message';
              }
              return null;
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          CustomContactSectionButton(
            onPressed: () {
              if (BlocProvider.of<AppCubit>(
                context,
              ).formKey.currentState!.validate()) {
                BlocProvider.of<AppCubit>(context).sendEmail();
              }
            },
          ),
        ],
      ),
    );
  }
}
