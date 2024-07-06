import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/command_bloc.dart';

class MoveWidget extends StatelessWidget {
  const MoveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        ElevatedButton(
          onPressed: () {
            context.read<CommandBloc>().add(SendMoveCommand('L'));
          },
        child: Icon(Icons.arrow_back_rounded),
        ),
        Column(
          children: [

            ElevatedButton(
              onPressed: () {
                context.read<CommandBloc>().add(SendMoveCommand('F'));
              },
              child: Icon(Icons.arrow_upward),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<CommandBloc>().add(SendMoveCommand('B'));
              },
              child: Icon(Icons.arrow_downward),
            ),

          ],

        ),
        ElevatedButton(
          onPressed: () {
            context.read<CommandBloc>().add(SendMoveCommand('R'));
          },
          child: Icon(Icons.arrow_forward_rounded),
        ),
      ],
    );
  }
}
