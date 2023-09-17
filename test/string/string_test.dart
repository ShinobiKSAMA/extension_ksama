library string_tests;

import 'package:flutter_test/flutter_test.dart';
import 'package:extension_ksama/string/string.dart';

part 'string_cases.dart';
part 'string_checkers.dart';
part 'string_converters.dart';
part 'string_manipulators.dart';
part 'string_validators.dart';

void main() {
  stringCases();
  stringCheckers();
  stringConverters();
  stringManipulators();
  stringValidators();
}
