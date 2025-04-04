import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/change_color_cubit/change_color_cubit.dart';
import 'package:test_task/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

///Top-level class
// ignore: prefer_match_file_name
class MyApp extends StatelessWidget {
  ///Constant constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeColorCubit(),
      child: MaterialApp(home: const HomePage(), builder: BotToastInit()),
    );
  }
}
