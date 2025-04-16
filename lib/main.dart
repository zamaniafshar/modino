import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:modino/bloc/human_mod_cubit.dart';
import 'package:path_provider/path_provider.dart';
import 'package:modino/theme/app_theme.dart';
import 'package:modino/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  // await Hive.initFlutter();
  // hello i created conflicts
  // HydratedBloc.storage = await HydratedStorage.build(
  //   storageDirectory: HydratedStorage.webStorageDirectory,
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HumanModCubit(),
      child: MaterialApp(
        title: 'Modino',
        theme: AppTheme.darkTheme,
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
