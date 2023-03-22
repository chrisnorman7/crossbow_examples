/// Generated on 2023-03-22 15:52:25.696320.
import 'dart:io';
import 'package:crossbow_backend/crossbow_backend.dart';
import 'package:lucky_thirteen/game_functions.dart';

Future<void> main() async {
  const gameFunctions = GameFunctions();
  final projectContext = ProjectContext.fromFile(
    File('project.encrypted'),
    encryptionKey: 'tk9UOp9rU1KThvXSMyETh34Kg6G+wfGhZagYVTRRRAU=',
    assetReferenceEncryptionKeys: {
      2: 'B0tTLV452eQQPTSHg9tuSG5vBlz2jlWkBqv2VzO2BPo=',
      3: '6zCHYE9n51QrRVVjz75+aVs9gSUn/gyhigpwN3l9qvw=',
      4: 'z/ZxDhplM8+Sc5aB91Psuov15Te707WlxpnC7uC2njA=',
      5: 'PL+8QNRQ5G4sgnpUjiFSwwBftpWAf5ElvoHxIF+2U10=',
      6: '+Md9lHYtRLa8HgOBd6aItZq3vubJurY6BIjAXUhSWTk=',
      7: '2zgk5eWKiVfyZjjD5ZEz26UYEZ3haWEmSRnV498ObRQ=',
      9: 'uMFPLbogIiW1bz6TwDIQAH1wygW9hBPDrO/VXyEtB80=',
      10: 'RjVPTC0bbNX21M4BquuPoGYZa7dzFFPlmJYuR8x2JdI=',
      11: 'd+c4T9xXCUJuSOkbpKbgNztE1uaSEbN5+eHW2SqqUf4=',
      12: 'jTR5fwvhXu9r20H7T7oysPtgGFZGSIgu7whF3afK29M=',
      13: 'NwaV7d5H6mBLcLibA1IHU4dv3GEZqL8ZleaPdMoSvec=',
      14: '3T2jLidV0p9QcnCKHDA+I7YDhejOCgK/CFc+uaz8xG8=',
      15: '4Vq0c7uFfLr9A4g9IQNiQldSJEcxlzVv3fJpJbTPC4s=',
      17: '5uNi1M5y7yNHYfopFyCXxR1Q3hjr3pDDWjDcEdkdP6c=',
      18: 'gj2CUpvlX0lvUhO88++y8YoZN6EpUBJn5FCricc1rLM=',
      19: 'lO4Sg+Xz859sdPp1yW2Z3GRtQmitIlVo4SKMO0U0Ve4=',
      20: 'PUFiFVJ6C5kRTVq1J3l0r2o+/9RjdtlMQD8ZBN2cFms=',
      21: 'B5rxZDMG2L2shy/ISBoG6eSVpptnfl9qWugo4FDfZkQ=',
      22: 'MKz/JXf/3TC42Z1WRUhNaUbQgrYtCVbXX+98nl/M/Mg=',
      24: 'dPZuLAwKNM3Jo1nM9cVbUcgl0+tITTuizlGdc39Kol8=',
      26: 'ZU7I6KKCu6751b3oOqgoTjjX7CFFWXXuEiSVkHYf23c=',
      28: '+xta/Yx2/pvKGZHomLKmckbIir16arMFSZB3XGMXrDM=',
      30: 'yE3pMGesF7b/rJ7QIWBm77lj1x1sURvVo77o8whdbiw=',
      31: 'bpCMNvN5UmWO6yFoWrGpSV5Z0QaWWko5Zv2aNVkT0fk=',
      34: 'FQkc679161VqYx7W1wnLuchpcLoq/0TUCaQVliDkhTg=',
      35: 'vdY4OdguYVBBsTru3IahaPbD9GMzh9nQN3DRwuBzVGY=',
      36: '3sBiwE9Imj13WNgIc0BbTimjqLK0RB+WPUXn8eK/+OA=',
      37: 'udR0WqeVcc74c9NtgcW7HBAYEj+MLEzGSyHGCTKqGQs=',
      38: 'edaJjQNDFmQrT9jOONbfdnrXxGjlEtOJL4Xt5KncIog=',
    },
    dartFunctionsMap: {
      'pushLuckyThirteenLevel': gameFunctions.pushLuckyThirteenLevel,
    },
  );
  await projectContext.run();
}
