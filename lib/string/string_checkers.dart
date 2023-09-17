part of string_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension StringCheckers on String {
  /// Returns `true` if only whitespaces are present.
  ///
  /// ```dart
  /// final str = "   ";
  /// str.isBlanksOnly;  // true
  /// ```
  bool get isBlanksOnly => trim().isEmpty;

  /// Returns `true` if string is Decimal number.
  /// Decimal String: only contains digits 0-9.
  /// ```dart
  /// "xyz".isDecimal;    // false
  /// "12".isDecimal;     // true
  /// ```
  bool get isDecimal => toInt() != null;

  /// Returns `true` if string is Binary string.
  /// Binary String: only contains 0(s) and 1(s).
  ///
  /// ```dart
  /// "xyz".isBinary;    // false
  /// "10".isBinary;     // true
  /// ```
  bool get isBinary => toInt(base: 2) != null;

  /// Returns `true` if string is Octal string.
  /// Octal String: only contains digits 0-7.
  ///
  /// ```dart
  /// "xyz".isOctal;    // false
  /// "071".isOctal;    // true
  /// ```
  bool get isOctal => toInt(base: 8) != null;

  /// Returns `true` if string is Hexadecimal string.
  /// Hexadecimal String: only contains digits 0-9 and
  /// characters A-F or a-f
  ///
  /// ```dart
  /// "xyz".isHexadecimal;    // false
  /// "12E".isHexadecimal;    // true
  /// ```
  bool get isHexadecimal => toInt(base: 16) != null;

  /// Returns `true` if string is double.
  ///
  /// ```dart
  /// "xyz".isDouble;    // false
  /// "12.45".isDouble;  // true
  /// ```
  bool get isDouble => toDouble() != null;

  /// Returns `true` if string is double.
  ///
  /// ```dart
  /// "xyz".isBool;    // false
  /// "false".isBool;  // true
  /// ```
  bool get isBool => toBool() != null;
}
