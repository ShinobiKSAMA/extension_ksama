part of date_time_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension ArithmeticOperations on DateTime {
  /// Returns `DateTime` object with provided additions.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.superAdd(days: 2);         // 18-10-2023
  /// checkDate.superAdd(months: 5);         // 16-3-2024
  /// checkDate.superAdd(years: 1);         // 16-10-2024
  /// checkDate.superAdd(months: 1, days: 2);// 18-10-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime superAdd({
    int days = 0, //Number of Days to be added, default is 0
    int weeks = 0, //Number of Weeks to be added, default is 0
    int months = 0, //Number of Months to be added, default is 0
    int years = 0, //Number of Years to be added, default is 0
  }) {
    DateTime newDate = add(Duration(days: days + (weeks * 7)));
    newDate = DateTime(newDate.year + years, month + months, day);
    return newDate.onlyDate;
  }

  /// Returns `DateTime` object with provided subtractions.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.superAdd(days: 2);         // 18-10-2023
  /// checkDate.superAdd(months: 5);         // 16-3-2024
  /// checkDate.superAdd(years: 1);         // 16-10-2024
  /// checkDate.superAdd(months: 1, days: 2);// 18-10-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime superSubtract({
    int days = 0, //Number of Days to be subtracted, default is 0
    int weeks = 0, //Number of Weeks to be subtracted, default is 0
    int months = 0, //Number of Months to be subtracted, default is 0
    int years = 0, //Number of Years to be subtracted, default is 0
  }) {
    DateTime newDate = subtract(Duration(days: days + (weeks * 7)));
    newDate = DateTime(newDate.year - years, month - months, day);
    return newDate.onlyDate;
  }
}
