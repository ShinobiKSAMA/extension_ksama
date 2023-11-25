part of date_time_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension YearOperations on DateTime {
  /// Returns `DateTime` object of First Day of the week.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.firstDayOfWeek;         // 11-09-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get firstDayOfYear => DateTime(year, 1, 1);

  /// Returns `DateTime` object of Last Day of the week.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.lastDayOfWeek;         // 17-09-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get lastDayOfYear => DateTime(year, 12, 31);

  /// Returns `DateTime` object of Next year.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.nextYear;         // 16-09-2024
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get nextYear => superAdd(years: 1);

  /// Returns `DateTime` object of Previous year.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.prevYear;         // 16-09-2022
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get prevYear => superSubtract(years: 1);
}
