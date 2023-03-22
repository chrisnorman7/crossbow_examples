import 'package:crossbow_backend/crossbow_backend.dart';

/// Custom game functions.

abstract class GameFunctionsBase {
  /// Allow subclasses to be constant.
  const GameFunctionsBase();

  /// Push a `LuckyThirteen` level.
  Future<void> pushLuckyThirteenLevel(final ProjectRunner runner);
}
