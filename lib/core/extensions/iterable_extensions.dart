
extension IterableExtension<T> on Iterable<T> {
  T? findWhere(bool Function(T e) test){
    for (T element in this) {
      if (test(element)) return element;
    }
    return null;
  }

  List<T> filterWhere(bool Function(T) test) {
    final list = <T>[];
    forEach((element) {
      if (test(element)) {
        list.add(element);
      }
    });
    return list;
  }

  Map<K, List<T>> groupListsBy<K>(K Function(T element) keyOf) {
    var result = <K, List<T>>{};
    for (var element in this) {
      (result[keyOf(element)] ??= []).add(element);
    }
    return result;
  }

  Map<K, Set<T>> groupSetsBy<K>(K Function(T element) keyOf) {
    var result = <K, Set<T>>{};
    for (var element in this) {
      (result[keyOf(element)] ??= <T>{}).add(element);
    }
    return result;
  }

  bool none(bool Function(T) test) {
    for (var element in this) {
      if (test(element)) return false;
    }
    return true;
  }
}

extension IterableNullableExtension<T> on Iterable<T?> {
  List<R> mapNotNull<R>(R Function(T element) convert){
    var list = <R>[];
    for (T? e in this) {
      if(e != null){
        list.add(convert(e));
      }
    }
    return list;
  }
}