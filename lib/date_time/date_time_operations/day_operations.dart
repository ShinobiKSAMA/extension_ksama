part of date_time_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension DayOperations on DateTime {
  /// Returns `DateTime` object of Next day.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.nextDay;          // 17-09-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get nextDay => superAdd(days: 1);

  /// Returns `DateTime` object of Previous day.
  ///
  /// ```dart
  /// final checkDate =
  ///      DateTime.parse('2023-09-16 20:18:00.123456789z');
  /// checkDate.prevDay;          // 15-09-2023
  /// ```
  ///
  /// This will not consider time Parameters.
  DateTime get prevDay => superSubtract(days: 1);
}

/// Returns `DateTime` object of Tomorrows's date.
///
/// This will not consider time paremeters.
DateTime get tomorrow => DateTime.now().nextDay;

/// Returns `DateTime` object of Yersrday's date.
///
/// This will not consider time paremeters.
DateTime get yesterday => DateTime.now().prevDay;
