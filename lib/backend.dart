import 'package:gym_api/src/app_module.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

Future<Handler> startApp() async {
  return Modular(module: AppModule(), middlewares: [
    logRequests(),
  ]);
}
