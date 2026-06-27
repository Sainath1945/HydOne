import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/metro_tracking.dart';
import 'metro_tracking_event.dart';
import 'metro_tracking_state.dart';

class MetroTrackingBloc extends Bloc<MetroTrackingEvent, MetroTrackingState> {
  MetroTrackingBloc() : super(MetroTrackingInitialState()) {
    on<MetroTrackingInitialEvent>(_onTrackingInitial);
    on<RefreshTrackingEvent>(_onRefreshTracking);
  }

  Future<void> _onTrackingInitial(
    MetroTrackingInitialEvent event,
    Emitter<MetroTrackingState> emit,
  ) async {
    emit(MetroTrackingLoadingState());
    await Future.delayed(const Duration(milliseconds: 500));

    final stations = [
      Station(name: 'Miyapur', isCompleted: true, isCurrentStation: false),
      Station(name: 'JNTU College', isCompleted: true, isCurrentStation: false),
      Station(name: 'Kukatpally', isCompleted: false, isCurrentStation: false),
      Station(name: 'Balanagar', isCompleted: false, isCurrentStation: false),
      Station(name: 'Moosapet', isCompleted: false, isCurrentStation: true),
      Station(name: 'Bharat Nagar', isCompleted: false, isCurrentStation: false),
      Station(name: 'Ameerpet', isCompleted: false, isCurrentStation: false),
      Station(name: 'Panjagutta', isCompleted: false, isCurrentStation: false),
      Station(name: 'LB Nagar', isCompleted: false, isCurrentStation: false),
    ];

    final trackingInfo = MetroTrackingInfo(
      fromStation: 'Miyapur',
      toStation: 'Ameerpet',
      lineName: 'Red Line',
      lineDescription: 'Train towards LB Nagar',
      isLive: true,
      nextStation: 'JNTU College',
      nextStationTime: 4,
      arrivingIn: 2,
      distance: 1.8,
      speed: 32,
      stations: stations,
      totalTime: 35,
      totalDistance: 18.6,
      totalStations: 16,
      fare: 40,
      currentStationIndex: 4,
    );

    emit(MetroTrackingLoadedState(trackingInfo: trackingInfo));
  }

  Future<void> _onRefreshTracking(
    RefreshTrackingEvent event,
    Emitter<MetroTrackingState> emit,
  ) async {
    final currentState = state;
    if (currentState is MetroTrackingLoadedState) {
      emit(MetroTrackingLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      emit(currentState);
    }
  }
}
