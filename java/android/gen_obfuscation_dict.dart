/**
 * Created at 2021/8/1 23:15
 * 
 * @author Liangcheng Juves
 */

import 'dart:math';
import 'dart:io';

final result = Set();
final keys = ["l", "I", "1", "O", "o", "0", "\$"];

Future main(List<String> args) async {
  for (var o = 1; o < 100000; o++) {
    for (var len = 6; len < 13; len++) {
      var tmp = keys[Random().nextInt(1)];
      for (var i = 1; i < len + 1; i++) {
        tmp += keys[Random().nextInt(keys.length)];
      }
      result.add(tmp);
    }
  }

  final outputFileName = "obfuscation.dict";
  final writeStream = File(outputFileName).openWrite();
  writeStream.writeAll(result, "\n");
  await writeStream.flush();
  await writeStream.close();
  print('Generate "${outputFileName}" successfully!');
}
