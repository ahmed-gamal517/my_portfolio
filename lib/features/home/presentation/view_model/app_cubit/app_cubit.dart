import 'package:bloc/bloc.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:url_launcher/url_launcher.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  final CarouselSliderController controller = CarouselSliderController();
  int currPage = 0;
  void changePage(int index) {
    currPage = index;
    controller.animateToPage(
      index,
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 300),
    );
    emit(AppChangePage());
  }

  void pageScrolled(int index) {
    currPage = index;
    emit(AppChangePage());
  }

  // contact me form section
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  void contactMe() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      sendEmail();
      formKey.currentState!.reset();
    }
  }

  void sendEmail() async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: emailController.text,
      query: 'subject=${subjectController.text}&body=${messageController.text}',
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Future<void> close() {
    subjectController.dispose();
    emailController.dispose();
    messageController.dispose();
    return super.close();
  }
}
