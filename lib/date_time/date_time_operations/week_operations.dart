part of date_time_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension WeekOperations on DateTime {
  /// Returns `DateTime` object of First Day of the week.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.firstDayOfWeek;         // 11-09-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get firstDayOfWeek => superSubtract(days: weekday - 1);

  /// Returns `DateTime` object of Last Day of the week.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.lastDayOfWeek;         // 17-09-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get lastDayOfWeek => firstDayOfWeek.superAdd(days: 6);

  /// Returns `DateTime` object of Next week.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.nextMonth;         // 23-09-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get nextWeek => superAdd(weeks: 1);

  /// Returns `DateTime` object of Previous week.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.prevMonth;         // 09-09-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get prevWeek => superSubtract(weeks: 1);
}
