part of string_extensions;

// Author: Aditya Mhatre (ShinobiKSAMA)

extension StringManipulators on String {
  /// Returns reversed `String`.
  ///
  /// ```dart
  /// final str = "hello";
  /// str.reverse;  // olleh
  /// ```
  String get reverse => characters.toList().reversed.join();

  /// Returns `List` of words from the sentence.
  ///
  /// ```dart
  /// final str = "hello there!";
  /// str.=tokenise;  // [hello, there!]
  /// ```
  List<String> get tokenise =>
      trim().split(" ").where((element) => element.isNotEmpty).toList();

  /// Returns abbreviation of the words in string.
  ///
  /// ```dart
  /// "Laughing out loud".abbreviate; //LOL
  /// ```
  String get abbreviate =>
      trim().split(" ").map((e) => e.characters.first.toUpperCase()).join();
}
