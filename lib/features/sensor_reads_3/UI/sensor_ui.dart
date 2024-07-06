// lib/screens/sensor_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/sensor_bloc.dart';
import '../repo/sensor_repo.dart';

class Sensor3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SensorBloc(SensorRepository())..add(FetchSensorData()),
      child: Container(
        child: BlocBuilder<SensorBloc, SensorState>(
          builder: (context, state) {
            if (state is SensorLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is SensorLoaded) {
              return Center(child: Text('flameDetected: ${state.sensor.sensor1}',    style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,

              ),));
            } else if (state is SensorError) {
              return Center(child: Text('Error: ${state.message}'));
            } else {
              return Center(child: Text('Press the button to fetch data'));
            }
          },
        ),
      ),
    );
  }
}
