import 'dart:math';

import 'package:crossbow_backend/crossbow_backend.dart' hide Command;
import 'package:crossbow_backend/extensions.dart';
import 'package:ziggurat/levels.dart';
import 'package:ziggurat/ziggurat.dart';

import 'movement_direction.dart';

/// Asset reference IDs for numbers.
const numberAssetReferenceIds = [
  -1, // There should never be a 0.
  9, // 1.
  14, // 2.
  15, // 3.
  18, // 4.
  17, // 5.
  19, // 6.
  20, //7.
  21, // 8.
  22, //9.
  10, // 10.
  11, // 11.
  12, // 12.
  13, // 13.
];

/// The lucky thirteen level.
class LuckyThirteenLevel extends Level {
  /// Create an instance.
  LuckyThirteenLevel({
    required this.runner,
    this.size = 5,
    this.direction = MovementDirection.stationary,
    this.movementSpeed = 200,
  })  : numbers = [],
        coordinates = const Point(0, 0),
        timeSinceLastMove = 0,
        selectedPoints = [],
        super(game: runner.game);

  /// The project runner to use.
  final ProjectRunner runner;

  /// The size of the board.
  final int size;

  /// The numbers on the board.
  List<List<List<int>>> numbers;

  /// The direction of movement.
  MovementDirection direction;

  /// The current player coordinates.
  Point<int> coordinates;

  /// How long has elapsed since moving.
  int timeSinceLastMove;

  /// How many millisecond must elapse between moves.
  final int movementSpeed;

  /// The selected points.
  final List<Point<int>> selectedPoints;

  /// Stop the player moving.
  void stop() {
    direction = MovementDirection.stationary;
  }

  /// Register [commands].
  Future<void> registerCommands() async {
    if (commands.isEmpty) {
      final commandsDao = runner.db.commandTriggersDao;
      final forwardsCommandTrigger = await commandsDao.getCommandTrigger(id: 1);
      final backwardsCommandTrigger = await commandsDao.getCommandTrigger(
        id: 2,
      );
      final leftCommandTrigger = await commandsDao.getCommandTrigger(id: 3);
      final rightCommandTrigger = await commandsDao.getCommandTrigger(id: 4);
      registerCommand(
        forwardsCommandTrigger.name,
        Command(
          onStart: () => direction = MovementDirection.forwards,
          onStop: stop,
        ),
      );
      registerCommand(
        backwardsCommandTrigger.name,
        Command(
          onStart: () => direction = MovementDirection.backwards,
          onStop: stop,
        ),
      );
      registerCommand(
        leftCommandTrigger.name,
        Command(
          onStart: () => direction = MovementDirection.left,
          onStop: stop,
        ),
      );
      registerCommand(
        rightCommandTrigger.name,
        Command(
          onStart: () => direction = MovementDirection.right,
          onStop: stop,
        ),
      );
    }
  }

  /// Populate the [numbers] list.
  @override
  void onPush({final double? fadeLength}) {
    super.onPush(fadeLength: fadeLength);
    numbers.clear();
    while (numbers.length < size) {
      numbers.add(
        List.generate(
          size,
          (final index) =>
              List.generate(13, (final index) => game.random.nextInt(12) + 1),
        ),
      );
    }
    registerCommands();
  }

  /// Move to the given [point].
  Future<void> move(final Point<int> point) async {
    final x = point.x, y = point.y;
    if (x < 0 || y < 0 || x >= size || y >= size) {
      final wall = await runner.getAssetReferenceFromId(2);
      game.interfaceSounds.playSound(assetReference: wall);
    } else {
      coordinates = Point(x, y);
      final column = numbers[x][y];
      if (column.isEmpty) {
        final wild = await runner.getAssetReferenceFromId(36);
        game.interfaceSounds.playSound(assetReference: wild);
      } else {
        final number = column.last;
        final id = numberAssetReferenceIds[number];
        final assetReference = await runner.getAssetReferenceFromId(id);
        game.interfaceSounds.playSound(assetReference: assetReference);
      }
    }
  }

  /// Move if necessary.
  @override
  void tick(final int timeDelta) {
    super.tick(timeDelta);
    if (timeSinceLastMove <= 0) {
      timeSinceLastMove = movementSpeed;
      switch (direction) {
        case MovementDirection.stationary:
          timeSinceLastMove = 0;
          break;
        case MovementDirection.forwards:
          move(Point(coordinates.x, coordinates.y + 1));
          break;
        case MovementDirection.backwards:
          move(Point(coordinates.x, coordinates.y - 1));
          break;
        case MovementDirection.left:
          move(Point(coordinates.x - 1, coordinates.y));
          break;
        case MovementDirection.right:
          move(Point(coordinates.x + 1, coordinates.y));
          break;
      }
    } else {
      timeSinceLastMove -= timeDelta;
    }
  }
}
