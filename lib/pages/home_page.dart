import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/change_color_cubit/change_color_cubit.dart';
import 'package:test_task/change_color_cubit/change_color_state.dart';
import 'package:test_task/color_generator.dart';

/// Home page class
class HomePage extends StatelessWidget {
  /// Home page class constructor
  HomePage({super.key});

  final ColorGenerator _colorGenerator = ColorGenerator();

  void _changeColor(BuildContext context) {
    final newColor = _colorGenerator.generateColor();

    context.read<ChangeColorCubit>().changeColor(newColor: newColor);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // ignore: avoid_unused_parameters
      create: (context) => ChangeColorCubit(),
      child: BlocBuilder<ChangeColorCubit, ChangeColorState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => _changeColor(context),
            child: Scaffold(
              backgroundColor: state.backgroundColor,
              body: const Center(
                child: Text(
                  'Hello there!',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28.0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
