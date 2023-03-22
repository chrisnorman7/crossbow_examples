import 'package:crossbow_backend/project_runner.dart';

import 'src/game_functions_base.dart';
import 'src/lucky_thirteen_level.dart';

/// Provide all the game functions.
class GameFunctions extends GameFunctionsBase {
  /// Make this class constant.
  const GameFunctions();

  @override
  Future<void> pushLuckyThirteenLevel(final ProjectRunner runner) async {
    final level = LuckyThirteenLevel(runner: runner);
    runner.game.pushLevel(level);
  }
}
