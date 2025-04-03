import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:test_task/change_color_cubit/change_color_state.dart';

///Cubit for changing backgroundColor
class ChangeColorCubit extends Cubit<ChangeColorState> {
  ///Constructor
  ChangeColorCubit() : super(ChangeColorState());

  ///Method for emitting new color to state
  void changeColor({required Color newColor}) {
    emit(
      state.copyWith(
        backgroundColor: newColor,
      ),
    );
  }

  ///Method to return initial background color
  void setInitialColor(){
    emit(
      ChangeColorState(),
    );
  }
}
