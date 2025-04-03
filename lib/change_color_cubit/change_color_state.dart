import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_color_state.freezed.dart';

@freezed
///State of ChangeColorCubit
class ChangeColorState with _$ChangeColorState{
  ///State constructor
  factory ChangeColorState({
    @Default(Colors.white) Color backgroundColor,
  }) = _ChangeColorState;
}
