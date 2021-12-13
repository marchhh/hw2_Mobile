// top-level function

import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = Random();
  var answer = r.nextInt(100);

  print("╔════════════════════════════════════");
  print("║           GUESS THE NUMBER         ");
  print("╟════════════════════════════════════");
  var count = 0;

  while (true) {
    stdout.write("Guess the number between 1 and 100: ");
    var x = stdin.readLineSync();
    var sum = int.tryParse(x!);
    if(sum == null){
      continue;
    }
    if(sum < answer){
      count++;
      print("║ ➜ $x is TOO LOW! ▼");
      print("╟════════════════════════════════════");
    }
    else if(sum > answer){
      count++;
      print("║ ➜ $x is TOO HIGH! ▲");
      print("╟════════════════════════════════════");
    }
    else if(sum == answer){
      count++;
      print("║ ➜ $x is CORRECT ❤, total guesses: $count");
      print("╟════════════════════════════════════");
      print("║               THE END              ");
      print("╚════════════════════════════════════");
      break;
    }

  }
}