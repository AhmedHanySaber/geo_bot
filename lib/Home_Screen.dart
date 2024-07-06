import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_bot/features/sensor_reads_1/UI/sensor_ui.dart';
import 'package:geo_bot/features/commands/UI/command_ui.dart';
import 'package:geo_bot/features/commands/UI/move_widget.dart';
import 'package:geo_bot/features/commands/bloc/command_bloc.dart';
import 'package:geo_bot/features/sensor_reads_2/UI/sensor_ui.dart';
import 'package:geo_bot/features/sensor_reads_3/UI/sensor_ui.dart';
import 'package:geo_bot/features/sensor_reads_4/UI/sensor_ui.dart';
import 'package:geo_bot/features/sensor_reads_5/UI/sensor_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:MediaQuery.of(context).size.height*0.001 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sensor widgets
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Sensor1(),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Sensor2(),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Sensor3(),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Sensor4(),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Sensor5(),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.01,
                      ),
                    ],
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.2 ,),
                // Camera Screen
              
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.1 ,
              width:  MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            context.read<CommandBloc>().add(SendMoveCommand('S'));
                          },
                          child: Text(
                            'Stop',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      MoveWidget(),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: CamMove(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
