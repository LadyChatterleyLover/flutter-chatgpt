class AppUtil {
  static findIndex(List list, String field, String eleField) {
    var foundElement = list.firstWhere((element) => element[eleField] == field);
    int index = list.indexOf(foundElement);
    return index;
  }
}
