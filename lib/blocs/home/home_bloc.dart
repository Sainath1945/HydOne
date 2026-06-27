import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/metro_line.dart';
import '../../models/service.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState()) {
    on<HomeInitialEvent>(_onHomeInitial);
    on<RefreshMetroStatusEvent>(_onRefreshMetro);
  }

  Future<void> _onHomeInitial(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoadingState());
    await Future.delayed(const Duration(milliseconds: 500));

    final metroLines = [
      MetroLine(
        name: 'Red Line',
        destination: 'Miyapur',
        duration: 2,
        status: 'Running',
        color: 0xFFD32F2F,
      ),
      MetroLine(
        name: 'Blue Line',
        destination: 'Nagole',
        duration: 6,
        status: 'Running',
        color: 0xFF1976D2,
      ),
    ];

    final services = [
      Service(
        name: 'Parking',
        iconCode: 0xF0581,
        count: '120+ Spots',
        description: 'Nearby',
      ),
      Service(
        name: 'ATMs',
        iconCode: 0xF0573,
        count: '58 Nearby',
        description: 'Nearby',
      ),
      Service(
        name: 'Hospitals',
        iconCode: 0xF0A4D,
        count: '24 Nearby',
        description: 'Nearby',
      ),
      Service(
        name: 'Tourist Places',
        iconCode: 0xF0C6E,
        count: '35+ Places',
        description: 'Nearby',
      ),
    ];

    emit(HomeLoadedState(
      userName: 'Ram',
      location: 'Hyderabad, India',
      metroLines: metroLines,
      nearbyServices: services,
    ));
  }

  Future<void> _onRefreshMetro(
    RefreshMetroStatusEvent event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    if (currentState is HomeLoadedState) {
      emit(HomeLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      emit(currentState);
    }
  }
}
