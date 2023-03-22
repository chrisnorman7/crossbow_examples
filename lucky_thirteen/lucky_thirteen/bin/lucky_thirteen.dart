/// Generated on 2023-03-22 14:41:49.186118.
import 'dart:io';
import 'package:crossbow_backend/crossbow_backend.dart';
import 'package:lucky_thirteen/game_functions.dart';

Future<void> main() async {
  const gameFunctions = GameFunctions();
  final projectContext = ProjectContext.fromFile(
    File('project.encrypted'),
    encryptionKey: 'GRNsVkE86rSZAneThEQd52rDmPpHAeKTqg74mwaJ6/8=',
    assetReferenceEncryptionKeys: {
      1: 'rzR8nL/Gu/0GcZdOspBldPd0OPXfC9fzlEOIkYyPlUw=',
      2: 'l/fAyuw5sh+Enwi81Bis0ZuWkAKLIWAV56BR+aQb6lQ=',
      3: 'qsGLUtbYIpG2+OQdX8E+FmtrInUJFucuwvDwt2DsYwo=',
      4: 'vv3NqVnU2W/D8M7h2yGt98jCL9q85NuaOMG8XFBK11g=',
      5: 'gmoh0BoTY8aNkxHR+HPFnmHeuJMxOJUeSz1ogyScJOo=',
      6: 'U0oWADDGMFSD+rWx2CwvNb5xtTu8C56vWl0Dzi/B/Lk=',
      7: '6ChVz9eaIesNmmPb828NGR5H24E7z5NNdfN7oc8JkNg=',
      9: '+uOx2p95z1IhrLtbrqEzmmXJ4bWE6LLqwYyCjZiTuc4=',
      10: 'b2j+zUYgTktZYGc7U4g1OsTj56/YXgap8NXwy5LtpLo=',
      11: 've8BfWeDEQfTf2F9HlESx1gHoI8P3DL17ExaVTXZc9k=',
      12: 'cpnV9mQhh3xZeX5yUpOvTApkdPuruCjPt2Ov7MIZ9DA=',
      13: 'LuiK3LXUMwy1yyF8buTmp57wojhzgE4JjiRYku/2tjk=',
      14: 'sCC8IWoT0sfCHIcMrEdQDhWkWJAzRyR4PPhlEr6LX1k=',
      15: 'Ba21MSyzvnYI0Zrx3K3vu7Pk3k1JZ72D1P63us1k+yg=',
      17: 'mJRwYb0V9rMVQOUL+DMqrQuQ9O3Ez0DrS6ocvgse8rw=',
      18: 'm08dCxazsHk5Lw3hsloCUMSK1hxzHjGLLI1bp8FFobA=',
      19: '3xJwoZtrZGh4hGverNPE22pzwEtGFsQoFmCPxJqu2sc=',
      20: '3WRZeJNHrQFEJNZQ/rzKNhygvdsMZtTdR6zwlD6jzOI=',
      21: 'lsQktwr11F/sjoqRGQHOq5iuiSRWcdYHW45mjveHA4Y=',
      22: 'pvIA4rk8QuAr8MoaICUIhkIUYFr0bgL8Ib0OJ8OYBUA=',
      24: 'vzLb+racWfNUDSA9kQLXN4yrdzlGf15Xl6m2C54nR4s=',
      26: 'X4OUvprzReEhn2kHwC5bcKeFERv0NFzgcuVoAVYRl8o=',
      28: 'prN4NPP0sjP72cqNC5FxRIFJCaBe9yPow6HcXqdnt34=',
      30: 'Yr1tp2km4sLL0+ide9Pkz5R+0fTvgDjdEMVZa6r3OUc=',
      31: 'Jzq7TuYjv9hFVdaPZbVy2wyh1KPVgRn+5YGAMVCZOh8=',
      34: 'c8ZFxA66g+n6qZDMnRcTOv0DM1y4DhrgMkIcoovnQ0g=',
      35: 'icwIc/LPPxQ+W1nmaVsWQKYXPEFFpiiKuApxEoOJ4WQ=',
      36: 'JxoD3anTCfr13lzzGZoc49Pn5fe2C2/P3RznR9R/cSA=',
    },
    dartFunctionsMap: {
      'pushLuckyThirteenLevel': gameFunctions.pushLuckyThirteenLevel,
    },
  );
  await projectContext.run();
}
