import 'package:flutter_test/flutter_test.dart';

import 'package:ap_extension/ap_extension.dart';

void main() {
  
  group("convert 转换测试", () {
    
    test("数字转换", () {
      
      // 浮点数字符串转换
      String str = "1234.5678";
      expect(str.toInt(), 1234);
      expect(str.toDouble(), 1234.5678);

      str = ".5678";
      expect(str.toInt(), 0);
      expect(str.toDouble(), 0.5678);

      str = "0.56780";
      expect(str.toInt(), 0);
      expect(str.toDouble(), 0.5678);
      
      // 错误的浮点数
      str = "1.5678.555";
      expect(str.toInt(), null);
      expect(str.toDouble(), null);
      
      // 逗号分割，并不支持
      str = "1,5678,555";
      expect(str.toInt(), null);
      expect(str.toDouble(), null);
      
      // 整形字符串转换
      str = "1234";
      expect(str.toInt(), 1234);
      expect(str.toDouble(), 1234.0);

      // 前缀带0，字符串转换
      str = "0001234";
      expect(str.toInt(), 1234);
      expect(str.toDouble(), 1234.0);

      // 混合带字母，字符串转换
      str = "12a34";
      expect(str.toInt(), null);
      expect(str.toDouble(), null);

      // 前缀带0，带字母干扰，字符串转换，转换失败
      str = "000aaa0001234ceil";
      expect(str.toInt(), null);
      expect(str.toDouble(), null);
    });
  });
}