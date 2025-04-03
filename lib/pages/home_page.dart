import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/change_color_cubit/change_color_cubit.dart';
import 'package:test_task/change_color_cubit/change_color_state.dart';
import 'package:test_task/color_generator.dart';
import 'package:test_task/utils/extensions.dart';

/// Home page class
class HomePage extends StatefulWidget {
  /// Home page class constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ChangeColorCubit _changeColorCubit;
  final ColorGenerator _colorGenerator = ColorGenerator();

  @override
  void initState() {
    super.initState();
    _changeColorCubit = context.read<ChangeColorCubit>();
    _changeColorCubit.getInitialColor();
  }

  void _changeColor(BuildContext context) {
    final newColor = _colorGenerator.generateColorUsingLCG();

    context.read<ChangeColorCubit>().changeColor(newColor: newColor);
  }

  void _returnInitialColor(BuildContext context) {
    context.read<ChangeColorCubit>().setInitialColor();
  }

  void _saveColorAsInitial(Color color) {
    _changeColorCubit.saveColorAsInitial(color: color);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangeColorCubit, ChangeColorState>(
      listener: (context, state) {
        if (state.savingStatus == SavingStatus.successful) {
          BotToast.showText(text: 'Color was successfully saved!');
          _changeColorCubit.clearSavingStatus();
        } else if (state.savingStatus == SavingStatus.error) {
          BotToast.showText(text: 'Something went wrong!');
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => _changeColor(context),
          onLongPress: () => _returnInitialColor(context),
          child: Scaffold(
            backgroundColor: state.backgroundColor,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const Text(
                    'Hello there!',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28.0,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    state.backgroundColor.toHex(),
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  SafeArea(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(
                          102,
                          140,
                          120,
                          1.0,
                        ),
                        foregroundColor: Colors.white,
                      ),
                      onPressed:
                          () => _saveColorAsInitial(state.backgroundColor),
                      child: const Text('Save color as initial'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
