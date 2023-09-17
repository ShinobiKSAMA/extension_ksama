part of string_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension StringCases on String {
  /// Returns `String` as First letter capitalized.
  ///
  /// ```dart
  /// final str = "hello";
  /// str.capitalisation;  // Hello
  /// ```
  String get capitalisation {
    if (isBlanksOnly) return this;
    if (trim().length == 1) return toUpperCase();
    return trim().characters.first.toUpperCase() + substring(1);
  }

  /// Returns `String` as first letter of all words capitalized.
  ///
  /// ```dart
  /// final str = "Hello there people";
  /// str.titleCase;  // Hello There People
  /// ```
  String get titleCase => split(" ").map((e) => e.capitalisation).join(" ");

  /// Returns `String` as first letter of all words capitalized
  /// without whitespaces.
  ///
  /// ```dart
  /// final str = "Hello there people";
  /// str.titleCase;  // Hello There People
  /// ```
  String get pascalCase =>
      trim().split(" ").map((e) => e.capitalisation).join();

  /// Returns `String` as first letter of all words capitalized except
  /// first word without whitespaces.
  ///
  /// ```dart
  /// final str = "Hello there people";
  /// str.titleCase;  // Hello There People
  /// ```
  String get camelCase =>
      trim().characters.first.toLowerCase() + pascalCase.substring(1);

  /// Returns `String` as case toggled for each characters.
  ///
  /// ```dart
  /// final str = "Hello tHere peOple";
  /// str.toggleCase;  // hELLO ThERE PEoPLE
  /// ```
  String get toggleCase => characters
      .map((e) => e.toUpperCase() == e ? e.toLowerCase() : e.toUpperCase())
      .join();
}
