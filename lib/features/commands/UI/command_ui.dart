import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/command_bloc.dart';


class CamMove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [

          ElevatedButton(
            onPressed: () {
              context.read<CommandBloc>().add(SendCamCommand('a'));
            },
            child: Text('a'),
          ),
          SizedBox(width: 20,),
          ElevatedButton(
            onPressed: () {
              context.read<CommandBloc>().add(SendCamCommand('c'));
            },
            child: Text('c'),
          ),
          SizedBox(width: 20,),
          ElevatedButton(
            onPressed: () {
              context.read<CommandBloc>().add(SendCamCommand('b'));
            },
            child: Text('b'),
          ),
        ],
      ),
    );
  }
}
