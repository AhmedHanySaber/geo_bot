import 'package:firebase_database/firebase_database.dart';

class CommandRepository {
  final DatabaseReference _databaseRef;

  CommandRepository(this._databaseRef);

  Future<void> sendCamCommand(String camValue) async {
    await _databaseRef.child('cam').set({'command': camValue});
  }

  Future<void> sendMoveCommand(String moveValue) async {
    await _databaseRef.child('move').set({'command': moveValue});
  }
}
