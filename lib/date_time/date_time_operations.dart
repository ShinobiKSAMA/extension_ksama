part of date_time_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension DateTimeOperations on DateTime {
  /// Returns `DateTime` object of Next day.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.nextDay;          // 17-09-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get nextDay => add(const Duration(days: 1)).onlyDate;

  /// Returns `DateTime` object of Previous day.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.prevDay;          // 15-09-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get prevDay => subtract(const Duration(days: 1)).onlyDate;

  /// Returns `DateTime` object of Next year.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.nextYear;         // 16-09-2024
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get nextYear => DateTime(year + 1, month, day);

  /// Returns `DateTime` object of Previous year.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.prevYear;         // 16-09-2022
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get prevYear => DateTime(year - 1, month, day);
}

/// Returns `DateTime` object of Tomorrows's date.
///
/// This will not consider time paremeters.
DateTime get tomorrow => DateTime.now().nextDay;

/// Returns `DateTime` object of Yersrday's date.
///
/// This will not consider time paremeters.
DateTime get yesterday => DateTime.now().prevDay;
