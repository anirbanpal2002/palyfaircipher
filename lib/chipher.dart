import 'dart:math';

import 'letters.dart';

class Cipher {
  List<String> encryption(String message) {
    int letterNo = 0;
    int lineNumber = 0;
    int letterNumber = 0;

    int one = 0;
    int two = 0;
    int three = 0;
    int four = 0;
    int five = 0;
    int six = 0;

    List<String> lenc = [];

    final _random = Random();
    int next(int min, int max) => min + _random.nextInt(max - min);
    bool flag = false;
    String LE = "";
    int code = 0;
    for (String i in message.split("")) {
      flag = false;
      letterNo = 0;
      lineNumber = 1;
      letterNumber = 0;
      LE = "";
      code = findNumber(i.toLowerCase());
      if (code == 26 || code == 26) {
        letterNo = 5;
      } else {
        letterNo = next(0, 6);
      }

      LE = LE + (letterNo + 1).toString() + "-";
      do {
        String letter = letters[letterNo];
        for (String a in letter.split("\n")) {
          for (String b in a.split("\t")) {
            letterNumber = 0;
            for (String c in b.split("")) {
              if (letterNo == 0 && lineNumber <= one) {
                continue;
              } else if (letterNo == 1 && lineNumber <= two) {
                continue;
              } else if (letterNo == 2 && lineNumber <= three) {
                continue;
              } else if (letterNo == 3 && lineNumber <= four) {
                continue;
              } else if (letterNo == 4 && lineNumber <= five) {
                continue;
              } else if (letterNo == 5 && lineNumber <= six) {
                continue;
              }
              letterNumber = letterNumber + 1;
              if (i == c) {
                LE = LE + lineNumber.toString() + "-" + letterNumber.toString();
                flag = true;
              }
              if (flag) {
                break;
              }
            }
            if (flag) {
              break;
            }
            lineNumber = lineNumber + 1;
          }
          if (flag) {
            break;
          }
          lineNumber = lineNumber + 1;
        }
        if (!flag) {
          if (letterNo == 0) {
            if (one == 0) {
              letterNo = letterNo + 1;
            }
            one = 0;
          } else if (letterNo == 1) {
            if (two == 0) {
              letterNo = letterNo + 1;
            }
            two = 0;
          } else if (letterNo == 2) {
            if (three == 0) {
              letterNo = letterNo + 1;
            }
            three = 0;
          } else if (letterNo == 3) {
            if (four == 0) {
              letterNo = letterNo + 1;
            }
            four = 0;
          } else if (letterNo == 4) {
            if (five == 0) {
              letterNo = letterNo + 1;
              ;
            }
            five = 0;
          } else if (letterNo == 5) {
            if (six == 0) {
              letterNo = 0;
            }
            six = 0;
          }
        }
      } while (!flag);
      lenc.add(LE);
      flag = false;
      if (letterNo == 0) {
        one = lineNumber;
      } else if (letterNo == 1) {
        two = lineNumber;
      } else if (letterNo == 2) {
        three = lineNumber;
      } else if (letterNo == 3) {
        four = lineNumber;
      } else if (letterNo == 4) {
        five = lineNumber;
      } else if (letterNo == 5) {
        six = lineNumber;
      }
    }
    /*for (String I in lenc) {
      print(I);
    }*/
    return lenc;
  }

  int findNumber(String letter) {
    switch (letter) {
      case "A":
        return 1;
      case "B":
        return 2;
      case "C":
        return 3;
      case "D":
        return 4;
      case "E":
        return 5;
      case "F":
        return 6;
      case "G":
        return 7;
      case "H":
        return 8;
      case "I":
        return 9;
      case "J":
        return 10;
      case "K":
        return 11;
      case "L":
        return 12;
      case "M":
        return 13;
      case "N":
        return 14;
      case "O":
        return 15;
      case "P":
        return 16;
      case "Q":
        return 17;
      case "R":
        return 18;
      case "S":
        return 19;
      case "T":
        return 20;
      case "U":
        return 21;
      case "V":
        return 22;
      case "W":
        return 23;
      case "X":
        return 24;
      case "Y":
        return 25;
      case "Z":
        return 26;
      default:
        return 27;
    }
  }
}
