import 'package:bloc_example/presintaion/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home page'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(state.number.toString(),style: const TextStyle(fontSize: 20,color: Colors.black),),

              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: (){
                context.read<HomeBloc>().add(CounterEvent(number: state.number));
              },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
