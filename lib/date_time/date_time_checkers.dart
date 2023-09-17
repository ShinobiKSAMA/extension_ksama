part of date_time_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension DateTimeCheckers on DateTime {
  /// Return `true` if given date is same as Today's date.
  ///
  /// ```dart
  /// final checkDate = DateTime.now(); // 16-09-2023
  /// checkDate.isToday;                // true
  /// checkDate.nextDay.isToday;        // false
  /// ```
  ///
  /// This will not consider time parameters.
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Return `true` if given date is same as Tomorrow's date.
  ///
  /// ```dart
  /// final checkDate = DateTime.now(); // 16-09-2023
  /// checkDate.nextDay.isTomorrow;     // true
  /// checkDate.isTomorrow;             // false
  /// ```
  ///
  /// This will not consider time parameters.
  bool get isTomorrow {
    final nextDay = tomorrow;
    return year == nextDay.year && month == nextDay.month && day == nextDay.day;
  }

  /// Return `true` if given date is same as Yesterday's date.
  ///
  /// ```dart
  /// final checkDate = DateTime.now(); // 16-09-2023
  /// checkDate.prevDay.isYesterday;    // true
  /// checkDate.isYesterday ;           // false
  /// ```
  ///
  /// This will not consider time parameters.
  bool get isYesterday {
    final prevDay = yesterday;
    return year == prevDay.year && month == prevDay.month && day == prevDay.day;
  }

  /// Return `true` if given date is on Saturday or Sunday.
  ///
  /// ```dart
  /// final checkDate =
  ///    DateTime.parse('2023-09-16 20:18:00.123456789z'); //Saturday
  /// checkDate.isWeekend;                                 //true
  /// ```
  bool get isWeekend {
    return [6, 7].contains(weekday);
  }

  /// Return `true` if given date is not on Saturday or Sunday.
  ///
  /// ```dart
  /// final checkDate =
  ///    DateTime.parse('2023-09-12 20:18:00.123456789z'); //Tuesday
  /// checkDate.isWeekday;                                 //true
  /// ```
  bool get isWeekday {
    return ![6, 7].contains(weekday);
  }
}
