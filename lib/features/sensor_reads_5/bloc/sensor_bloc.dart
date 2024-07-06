// lib/bloc/sensor_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../data/sensor_model.dart';
import '../repo/sensor_repo.dart';


// Events
abstract class SensorEvent extends Equatable {
  const SensorEvent();
}

class FetchSensorData extends SensorEvent {
  @override
  List<Object> get props => [];
}

class SensorDataChanged extends SensorEvent {
  final SensorModel sensorData;

  const SensorDataChanged(this.sensorData);

  @override
  List<Object> get props => [sensorData];
}

// States
abstract class SensorState extends Equatable {
  const SensorState();
}

class SensorInitial extends SensorState {
  @override
  List<Object> get props => [];
}

class SensorLoading extends SensorState {
  @override
  List<Object> get props => [];
}

class SensorLoaded extends SensorState {
  final SensorModel sensor;

  const SensorLoaded(this.sensor);

  @override
  List<Object> get props => [sensor];
}

class SensorError extends SensorState {
  final String message;

  const SensorError(this.message);

  @override
  List<Object> get props => [message];
}

// BLoC
class SensorBloc extends Bloc<SensorEvent, SensorState> {
  final SensorRepository sensorRepository;
  late Stream<SensorModel> _sensorStream;

  SensorBloc(this.sensorRepository) : super(SensorInitial()) {
    on<FetchSensorData>((event, emit) {
      emit(SensorLoading());

      _sensorStream = sensorRepository.sensorDataStream();
      _sensorStream.listen((sensorData) {
        add(SensorDataChanged(sensorData));
      }, onError: (error) {
        emit(SensorError(error.toString()));
      });
    });

    on<SensorDataChanged>((event, emit) {
      emit(SensorLoaded(event.sensorData));
    });
  }
}
