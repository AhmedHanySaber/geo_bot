import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:geo_bot/features/commands/bloc/command_bloc.dart';
import 'package:geo_bot/home_screen.dart';
import 'package:geo_bot/features/commands/repo/command_repo.dart'; // Import CommandRepository

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final databaseReference = FirebaseDatabase.instance.ref();
  final commandRepository = CommandRepository(databaseReference);

  runApp(MyApp(commandRepository: commandRepository));
}

class MyApp extends StatelessWidget {
  final CommandRepository commandRepository;

  MyApp({required this.commandRepository});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CommandBloc(commandRepository),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
