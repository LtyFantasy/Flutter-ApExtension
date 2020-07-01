import 'package:flutter_test/flutter_test.dart';

import 'package:ap_extension/ap_extension.dart';

void main() {
  
  group("Map 安全测试", () {
    
    String key = "";
    Map map = Map();
    map[key] = null;
    print(map);
    print(key.isEmpty);
  });
}