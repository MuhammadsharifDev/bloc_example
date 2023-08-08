import 'package:bloc_example/presintaion/category/category_page.dart';
import 'package:bloc_example/presintaion/home/home_page.dart';
import 'package:bloc_example/presintaion/main/bloc/main_bloc.dart';
import 'package:bloc_example/presintaion/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() =>
      _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.bottomMenu.index,
            children: const [
              HomePage(),
              CategoryPage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.bottomMenu.index,
            onTap: (index) {
              context
                  .read<MainBloc>()
                  .add(SetBottomMenuEvent(menu: BottomMenu.values[index]));
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Caterogy'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.deepOrange,
          ),
        );
      },
    );
  }
}
