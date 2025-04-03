import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:test_task/change_color_cubit/change_color_state.dart';
import 'package:test_task/services/shared_preferences_service.dart';
import 'package:test_task/utils/extensions.dart';

///Cubit for changing backgroundColor
class ChangeColorCubit extends Cubit<ChangeColorState> {
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService();

  ///Constructor
  ChangeColorCubit() : super(ChangeColorState());

  ///Method for getting initial color from local storage
  Future<void> getInitialColor() async {
    try {
      final String? initialHexColor =
          await _sharedPreferencesService.getHexColor();

      if (initialHexColor != null) {
        emit(state.copyWith(backgroundColor: initialHexColor.toColor()));
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  ///Method for emitting new color to state
  void changeColor({required Color newColor}) {
    emit(state.copyWith(backgroundColor: newColor));
  }

  ///Method to return initial background color
  void setInitialColor() {
    emit(ChangeColorState());
  }

  ///Method for saving color to storage
  Future<void> saveColorAsInitial({required Color color}) async {
    try {
      await _sharedPreferencesService.saveColorAsInitial(
        colorInHex: color.toHex(),
      );

      emit(state.copyWith(savingStatus: SavingStatus.successful));
    } catch (e) {
      emit(state.copyWith(savingStatus: SavingStatus.error));
      throw Exception(e);
    }
  }

  ///Method to clear status after successful saving
  void clearSavingStatus(){
    emit(state.copyWith(savingStatus: SavingStatus.initial));
  }
}
