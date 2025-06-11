import 'package:bloc/bloc.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

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
}
