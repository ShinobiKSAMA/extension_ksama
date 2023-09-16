part of string_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension StringConverters on String {
  /// Returns either `int` or `null`.
  /// Takes base as parameters depending
  /// on base like 2, 8, 16.
  /// default base is 10.
  ///
  /// ```
  /// "xyz".toInt();          // null
  /// "12".toInt();           // 12
  /// "12E".toInt(radix: 16); // 12E
  /// ```
  int? toInt({int? base}) => int.tryParse(this, radix: base);

  /// Returns either `double` or `null`.
  ///
  /// ```
  /// "xyz".toDouble();   // null
  /// "12.45".toDouble(); // 12.45
  /// ```
  double? toDouble() => double.tryParse(this);

  /// Returns either `bool` or `null`.
  ///
  /// ```
  /// "xyz".toBool();   // null
  /// "false".toBool(); // false
  /// "1".toBool();     // true
  /// ```
  bool? toBool() {
    if (["true", "1"].contains(toLowerCase())) return true;
    if (["false", "0"].contains(toLowerCase())) return false;
    return null;
  }
}
