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
          r"^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$",
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
      RegExp(r"/^(?=(?:[^0-9]*[0-9]){10}(?:(?:[^0-9]*[0-9]){3})?$)[\d-]+$/",
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
  bool get isIPv4 => RegExp(
          r"/(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])/",
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
  bool get isIPv6 => RegExp(r"/((([0-9a-fA-F]){1,4})\:){7}([0-9a-fA-F]){1,4}/",
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
  bool get isPhone =>
      RegExp(r"^[+]{1}(?:[0-9\\-\\(\\)\\/\\.]\\s?){6, 15}[0-9]{1}$",
              caseSensitive: false)
          .hasMatch(this);
}
