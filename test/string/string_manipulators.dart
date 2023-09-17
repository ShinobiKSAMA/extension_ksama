part of string_tests;

void stringManipulators() {
  group("Strign manipulators tests", () {
    test("reverse", () {
      expect("  ".reverse, "  ");
      expect("12.5".reverse, "5.21");
      expect("hellp".reverse, "plleh");
      expect("h".reverse, "h");
    });

    test("tokenise", () {
      expect("  ".tokenise, []);
      expect("hello there".tokenise, ["hello", "there"]);
      expect("hellp".tokenise, ["hellp"]);
      expect("h".tokenise, ["h"]);
    });

    test("abbreviate", () {
      expect("  ".abbreviate, "");
      expect("hello there".abbreviate, "HT");
      expect("hellp".abbreviate, "H");
      expect("h".abbreviate, "H");
    });
  });
}
