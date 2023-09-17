part of string_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension StringValidators on String {
  /// Returns `true` if string matches Email format.
  ///
  /// ```dart
  /// final str1 = "askme@ask.com";
  /// final str2 = "xyz";
  /// str1.isEmail;  // true
  /// str2.isEmail;  // false
  /// ```
  bool get isEmail => RegExp(
          r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$",
          caseSensitive: false)
      .hasMatch(this);

  /// Returns `true` if string matches ISBN format.
  ///
  /// ```dart
  /// final str1 = "978-1-45678-123-4";
  /// final str2 = "xyz";
  /// str1.isISBN;  // true
  /// str2.isISBN;  // false
  /// ```
  bool get isISBN =>
      RegExp(r"^(ISBN(\-1[03])?[:]?[ ]?)?(([0-9][- ]?){13}|([0-9][- ]?){10})$",
              caseSensitive: false)
          .hasMatch(this);

  /// Returns `true` if string matches IPv4 format.
  ///
  /// ```dart
  /// final str1 = "203.120.223.13";
  /// final str2 = "xyz";
  /// str1.isIPv4;  // true
  /// str2.isIPv4;  // false
  /// ```
  bool get isIPv4 => RegExp(r"^(?:(?:^|\.)(?:2(?:5[0-5]|[0-4]\d)|1?\d?\d)){4}$",
          caseSensitive: false)
      .hasMatch(this);

  /// Returns `true` if string matches IPv6 format.
  ///
  /// ```dart
  /// final str1 = "fffe:3465:efab:23fe:2235:6565:aaab:0001";
  /// final str2 = "xyz";
  /// str1.isIPv6;  // true
  /// str2.isIPv6;  // false
  /// ```
  bool get isIPv6 => RegExp(
          r"^((([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}:[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){5}:([0-9A-Fa-f]{1,4}:)?[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){4}:([0-9A-Fa-f]{1,4}:){0,2}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){3}:([0-9A-Fa-f]{1,4}:){0,3}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){2}:([0-9A-Fa-f]{1,4}:){0,4}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(([0-9A-Fa-f]{1,4}:){0,5}:((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(::([0-9A-Fa-f]{1,4}:){0,5}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|([0-9A-Fa-f]{1,4}::([0-9A-Fa-f]{1,4}:){0,5}[0-9A-Fa-f]{1,4})|(::([0-9A-Fa-f]{1,4}:){0,6}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){1,7}:))$",
          caseSensitive: false)
      .hasMatch(this);

  /// Returns `true` if string matches IPv6 format.
  ///
  /// ```dart
  /// final str1 = "fffe:3465:efab:23fe:2235:6565:aaab:0001";
  /// final str2 = "xyz";
  /// str1.isIPv6;  // true
  /// str2.isIPv6;  // false
  /// ```
  bool get isPhone => RegExp(
          r"^(0|\+|(\+[0-9]{2,4}|\(\+?[0-9]{2,4}\)) ?)([0-9]*|\d{2,4}-\d{2,4}(-\d{2,4})?)$",
          caseSensitive: false)
      .hasMatch(this);
}
