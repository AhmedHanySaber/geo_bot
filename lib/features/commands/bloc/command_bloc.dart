import 'package:flutter_bloc/flutter_bloc.dart';
import '../repo/command_repo.dart';

class CommandBloc extends Bloc<CommandEvent, void> {
  final CommandRepository commandRepository;

  CommandBloc(this.commandRepository) : super(null) {
    on<SendCamCommand>((event, emit) async {
      await commandRepository.sendCamCommand(event.camValue);
    });
    on<SendMoveCommand>((event, emit) async {
      await commandRepository.sendMoveCommand(event.moveValue);
    });
  }
}

abstract class CommandEvent {}

class SendCamCommand extends CommandEvent {
  final String camValue;

  SendCamCommand(this.camValue);
}

class SendMoveCommand extends CommandEvent {
  final String moveValue;

  SendMoveCommand(this.moveValue);
}
