part of date_time_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension MonthOperations on DateTime {
  /// Returns `DateTime` object of First Day of the Month.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.nextMonth;         // 01-10-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get firstDayOfMonth => DateTime(year, month, 1);

  /// Returns `DateTime` object of Last Day of the Month.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.nextMonth;         // 31-10-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get lastDayOfMonth => nextMonth.superSubtract(days: 1);

  /// Returns `DateTime` object of Next month.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.nextMonth;         // 16-10-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get nextMonth => superAdd(months: 1);

  /// Returns `DateTime` object of Previous month.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.prevMonth;         // 16-08-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get prevMonth => superSubtract(months: 1);
}
