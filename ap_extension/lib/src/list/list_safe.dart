part of 'list_extension.dart';

extension ListSafe<E> on List<E> {

  E get safeFirst {
    if (this.isEmpty) return null;
    return this.first;
  }
  
  E get safeLast {
    if (this.isEmpty) return null;
    return this.last;
  }
}