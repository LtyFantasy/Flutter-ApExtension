part of 'list_extension.dart';

extension ListSafe<E> on List<E> {

  /// 安全访问 First
  E get safeFirst {
    if (this.isEmpty) return null;
    return this.first;
  }

  /// 安全访问 Last
  E get safeLast {
    if (this.isEmpty) return null;
    return this.last;
  }
}