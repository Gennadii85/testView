import 'package:bloc/bloc.dart';
import 'package:dashboard/common/variables.dart';
import 'package:flutter/material.dart';

part 'bottom_state.dart';

class BottomCubit extends Cubit<BottomState> {
  BottomCubit() : super(BottomInitial());
  final String nameProfile2 = 'By, James';
  dynamic rename() {
    Variables.nameProfile = nameProfile2;
    emit(BottomOnTab());
  }
}
