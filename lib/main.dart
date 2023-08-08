import 'package:bloc_example/presintaion/home/bloc/home_bloc.dart';
import 'package:bloc_example/presintaion/home/home_page.dart';
import 'package:bloc_example/presintaion/main/bloc/main_bloc.dart';
import 'package:bloc_example/presintaion/main/main_page.dart';
import 'package:bloc_example/presintaion/profile/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presintaion/category/bloc/category_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_)=>MainBloc()),
          BlocProvider(create: (_)=>HomeBloc()),
          BlocProvider(create: (_)=>CategoryBloc()),
          BlocProvider(create: (_)=>ProfileBloc()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainPage(),
        ),
    );
  }
}
