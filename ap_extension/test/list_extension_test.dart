import 'package:flutter_test/flutter_test.dart';

import 'package:ap_extension/ap_extension.dart';

void main() {
  
  group("List 安全测试", () {
  
    test('First Last读取测试', () {
    
      List list = List();
      // First保护
      expect(list.safeFirst, null);
    
      // Last保护
      expect(list.safeLast, null);
    
      // 一个元素
      list.add(123);
      expect(list.safeFirst, 123);
      expect(list.safeLast, 123);
    
      // 两个元素
      list.add(321);
      expect(list.safeFirst, 123);
      expect(list.safeLast, 321);
    });
  });
}
