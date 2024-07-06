class Command {
  final String type;
  final String value;

  Command({required this.type, required this.value});

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'value': value,
    };
  }
}
