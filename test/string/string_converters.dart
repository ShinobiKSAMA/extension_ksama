part of string_tests;

void stringConverters() {
  group("String converters tests", () {
    test("toInt()", () {
      expect("  ".toInt(), null);
      expect("12".toInt(), 12);
      expect("12e".toInt(), null);
      expect("12e".toInt(base: 16), 0x12E);
    });

    test("toDouble()", () {
      expect("  ".toDouble(), null);
      expect("12.5".toDouble(), 12.5);
      expect("12e".toDouble(), null);
    });

    test("toBool()", () {
      expect("  ".toBool(), null);
      expect("false".toBool(), false);
      expect("true".toBool(), true);
      expect("ture".toBool(), null);
    });
  });
}
