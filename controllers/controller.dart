import 'dart:io';

import 'package:fennec/fennec.dart';

@RestController(path: '/healthcheck')
class Controller {
  @Route('', RequestMethod.get())
  void heltchCheck(Request request, Response response) {
    response.send('your healtcheck is successful');
  }

  @Route('/servercheck', RequestMethod.get())
  void servercheck(Request request, Response response) {
    var env = Platform.environment;
    var port = env.entries.firstWhere((element) => element.key == 'PORT',
        orElse: () => MapEntry('PORT', '8080'));
    response.send('your server is running at port  ${port.value}');
  }
}
