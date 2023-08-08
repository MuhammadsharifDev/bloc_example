import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<CounterEvent>(_increment);
  }
  void _increment(CounterEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(number: event.number + 1));
  }
}
