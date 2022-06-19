import 'dart:io';

import 'package:fennec/fennec.dart';

import '../controllers/controller.dart';

void main(List<String> arguments) async {
  var env = Platform.environment;
  var port = env.entries.firstWhere((element) => element.key == 'PORT',
      orElse: () => MapEntry('PORT', '8080'));
  Application application = Application('0.0.0.0', int.parse(port.value));
  application.addController(Controller);
  Server server = Server(application);
  await server.startServer();
  print('Server Started');
}
