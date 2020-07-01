part of 'string_extension.dart';

extension StringConvert on String {
  
  /// 转换为int
  int toInt() {
    // 包含小数点，就要用double转换
    if (this.contains('.')) {
      return this.toDouble()?.toInt();
    }
    else {
      return int.tryParse(this);
    }
  }
  
  /// 转换为double
  double toDouble() {
    return double.tryParse(this);
  }
}