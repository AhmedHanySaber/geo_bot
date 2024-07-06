// lib/models/sensor_model.dart
class SensorModel {
  final String sensor1;

  SensorModel({required this.sensor1});

  factory SensorModel.fromMap(String sensor1) {
    return SensorModel(
      sensor1: sensor1 ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Sensor1': sensor1,
    };
  }
}
