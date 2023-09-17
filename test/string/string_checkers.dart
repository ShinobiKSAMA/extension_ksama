part of string_tests;

void stringCheckers() {
  group("String checkers tests", () {
    test("isBlanksOnly", () {
      expect("  ".isBlanksOnly, true);
      expect("h".isBlanksOnly, false);
      expect("  h".isBlanksOnly, false);
    });

    test("isDecimal", () {
      expect("  ".isDecimal, false);
      expect("12".isDecimal, true);
      expect("1x".isDecimal, false);
    });

    test("isBinary", () {
      expect("  ".isBinary, false);
      expect("12".isBinary, false);
      expect("10".isBinary, true);
    });

    test("isOctal", () {
      expect("  ".isOctal, false);
      expect("75".isOctal, true);
      expect("80".isOctal, false);
    });

    test("isHexadecimal", () {
      expect("  ".isHexadecimal, false);
      expect("2F".isHexadecimal, true);
      expect("G1".isHexadecimal, false);
    });

    test("isDouble", () {
      expect("  ".isDouble, false);
      expect("flase".isDouble, false);
      expect("12.5".isDouble, true);
    });

    test("isBool", () {
      expect("  ".isBool, false);
      expect("flase".isBool, false);
      expect("false".isBool, true);
    });
  });
}
