library date_time_tests;

import 'package:flutter_test/flutter_test.dart';
import 'package:extension_ksama/date_time/date_time.dart';

part 'date_time_checkers.dart';
part 'date_time_comparators.dart';
part 'date_time_manipulators.dart';
part 'date_time_operations.dart';

void main() {
  dateTimeCheckers();
  dateTimeManipulators();
  dateTimeComparators();
  dateTimeOperations();
}
