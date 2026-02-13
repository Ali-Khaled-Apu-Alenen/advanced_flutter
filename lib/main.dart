
import 'package:flutter/foundation.dart';
import 'main_development.dart' as development;
import 'main_production.dart' as production;

void main() {
  if (kDebugMode) {
    development.main();
  } else {
    production.main();
  }
}
