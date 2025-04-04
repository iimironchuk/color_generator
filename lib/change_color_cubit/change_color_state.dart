// ignore_for_file: avoid_unused_parameters
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_color_state.freezed.dart';

///Statuses to indicate if color successfully saved or not
// ignore: prefer_match_file_name
enum SavingStatus{
  initial,
  successful,
  error,
}

@freezed
///State of ChangeColorCubit
class ChangeColorState with _$ChangeColorState{
  ///State constructor
  factory ChangeColorState({
    @Default(Colors.white) Color backgroundColor,
    @Default(SavingStatus.initial) SavingStatus savingStatus,
  }) = _ChangeColorState;
}
