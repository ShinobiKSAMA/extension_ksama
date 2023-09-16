part of date_time_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension DateTimeComparators on DateTime {
  /// Returns `true` if left side is after Right side.
  ///
  /// ```dart
  /// final checkDate = DateTime.now();   // 16-09-2023
  /// checkDate.nextDay > DateTime.now()  // true
  /// checkDate > DateTime.now()          // false
  /// ```
  ///
  /// The comparison is independent of whether the time is in UTC
  ///  or in the local time zone
  bool operator >(DateTime otherDate) => isAfter(otherDate);

  /// Returns `true` if left side is after Right side or on same date.
  ///
  /// ```dart
  /// final checkDate = DateTime.now();   // 16-09-2023
  /// checkDate.nextDay >= DateTime.now()  // true
  /// checkDate >= DateTime.now()          // true
  /// checkDate.prevDay >= DateTime.now()  // true
  /// ```
  ///
  /// The comparison is independent of whether the time is in UTC
  ///  or in the local time zone
  bool operator >=(DateTime otherDate) =>
      isAfter(otherDate) || isAtSameMomentAs(otherDate);

  /// Returns `true` if left side is before Right side.
  ///
  /// ```dart
  /// final checkDate = DateTime.now();   // 16-09-2023
  /// checkDate.prevDay < DateTime.now()  // true
  /// checkDate < DateTime.now()          // false
  /// ```
  ///
  /// The comparison is independent of whether the time is in UTC
  ///  or in the local time zone
  bool operator <(DateTime otherDate) => isAfter(otherDate);

  /// Returns `true` if left side is before Right side or on same date.
  ///
  /// ```dart
  /// final checkDate = DateTime.now();   // 16-09-2023
  /// checkDate.prevDay <= DateTime.now()  // true
  /// checkDate <= DateTime.now()          // true
  /// checkDate.nextDay <= DateTime.now()  // true
  /// ```
  ///
  /// The comparison is independent of whether the time is in UTC
  ///  or in the local time zone
  bool operator <=(DateTime otherDate) =>
      isAfter(otherDate) || isAtSameMomentAs(otherDate);
}
