/// Generated on 2023-03-22 15:58:58.672791.
import 'dart:io';
import 'package:crossbow_backend/crossbow_backend.dart';
import 'package:directory/game_functions.dart';

Future<void> main() async {
  const gameFunctions = GameFunctions();
  final projectContext = ProjectContext.fromFile(
    File('project.encrypted'),
    encryptionKey: 'uC5WI/DjAIetRm/QJO/OJbUt8EpZxZ/OG05H1P9ABZ0=',
    assetReferenceEncryptionKeys: {},
    dartFunctionsMap: {},
  );
  await projectContext.run();
}
