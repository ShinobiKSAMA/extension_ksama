part of date_time_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension DateTimeManipulators on DateTime {
  /// Returns `DateTime` object without time parameters.
  ///
  /// Useful when you want to make collection of same dates.
  ///
  /// ```dart
  ///   final dateOnly = DateTime.now();  // 16-09-2023 16:44:26:234567Z
  ///   dateOnly.onlyDate;                // 16-09-2023 00:00:00:000000Z
  /// ```
  DateTime get onlyDate => DateTime(year, month, day);

  /// Returns `DateTime` object without `microsecond`.
  ///
  /// New instance will have anything smaller than `millisecond` as `0`.
  ///
  /// ```dart
  ///   final dateOnly = DateTime.now();  // 16-09-2023 16:44:26:234567Z
  ///   dateOnly.onlyDate;                // 16-09-2023 16:44:26:234000Z
  /// ```
  DateTime get removeMicros =>
      DateTime(year, month, day, hour, minute, second, millisecond);

  /// Returns `DateTime` object without `millisecond` and smaller.
  ///
  /// New instance will have anything smaller than `second` as `0`.
  ///
  /// ```dart
  ///   final dateOnly = DateTime.now();  // 16-09-2023 16:44:26:234567Z
  ///   dateOnly.onlyDate;                // 16-09-2023 16:44:26:000000Z
  /// ```
  DateTime get removeMillis => DateTime(year, month, day, hour, minute, second);

  /// Returns `DateTime` object without `second` and smaller.
  ///
  /// New instance will have anything smaller than `minute` as `0`.
  ///
  /// ```dart
  ///   final dateOnly = DateTime.now();  // 16-09-2023 16:44:26:234567Z
  ///   dateOnly.onlyDate;                // 16-09-2023 16:44:00:000000Z
  /// ```
  DateTime get removeSeconds => DateTime(year, month, day, hour, minute);

  /// Returns `DateTime` object without `minute` and smaller.
  ///
  /// New instance will have anything smaller than `hour` as `0`.
  ///
  /// ```dart
  ///   final dateOnly = DateTime.now();  // 16-09-2023 16:44:26:234567Z
  ///   dateOnly.onlyDate;                // 16-09-2023 16:00:00:000000Z
  /// ```
  DateTime get removeMinutes => DateTime(year, month, day, hour);
}
