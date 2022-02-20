extension StringExtentions on String {
  int? wordToNum() {
    switch (this) {
      case 'zero':
        return 0;
      case 'one':
        return 1;
      case 'two':
        return 2;
      case 'three':
        return 3;
      case 'four':
        return 4;
      case 'five':
        return 5;
      case 'six':
        return 6;
      case 'seven':
        return 7;
      case 'eight':
        return 8;
      case 'nine':
        return 9;
      default:
        return null;
    }
  }
}

class StringUtils {
  static List<num> findNumInString(String data) {
    return data
        .split(' ')
        .where((String item) => num.tryParse(item) != null)
        .map((String item) => num.parse(item))
        .toList();
  }

  static Map<String, int> countWordsInTheCollection(List<String> words) {
    final Map<String, int> map = {};

    for (String word in words) {
      if (map[word] != null) {
        map[word] = map[word]! + 1;
        continue;
      }

      map[word] = 1;
    }

    return map;
  }

  static List<int> toInt(List<String> words) {
    return words.map((String word) => word.wordToNum()).whereType<int>().toList();
  }
}
