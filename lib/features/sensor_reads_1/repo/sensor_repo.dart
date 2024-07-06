// lib/repositories/sensor_repository.dart
import 'package:firebase_database/firebase_database.dart';
import '../data/sensor_model.dart';


class SensorRepository {
  final DatabaseReference _sensorRef = FirebaseDatabase.instance.ref().child('humidity');

  Stream<SensorModel> sensorDataStream() {
    return _sensorRef.onValue.map((event) {
      if (event.snapshot.value != null) {
        return SensorModel.fromMap(event.snapshot.value.toString());
      } else {
        throw Exception('Sensor data not found');
      }
    });
  }
}
