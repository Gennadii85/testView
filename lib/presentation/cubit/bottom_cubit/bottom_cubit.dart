import 'package:bloc/bloc.dart';
import 'package:dashboard/common/variables.dart';
import 'package:flutter/material.dart';

part 'bottom_state.dart';

class BottomCubit extends Cubit<BottomState> {
  BottomCubit() : super(BottomInitial());
  dynamic rename() {
    Variables.nameProfile = Variables.nameProfile2;
    emit(BottomOnTab());
  }
}
