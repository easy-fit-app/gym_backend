import 'dart:io';

import 'package:gym_api/backend.dart';
import 'package:shelf/shelf_io.dart';

void main(List<String> args) async {
  final ip = InternetAddress.anyIPv4;

  final handler = await startApp();

  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);
  print('Server listening on port ${server.port}');
}
