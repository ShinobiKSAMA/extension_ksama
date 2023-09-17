part of string_tests;

void stringCases() {
  group("String cases tests", () {
    test("capitalization", () {
      expect("hello".capitalisation, "Hello");
      expect("  ".capitalisation, "  ");
      expect("h".capitalisation, "H");
    });

    test("titleCase", () {
      expect("hello there".titleCase, "Hello There");
      expect("  ".titleCase, "  ");
      expect("h".titleCase, "H");
    });

    test("pascalCase", () {
      expect("hello there".pascalCase, "HelloThere");
      expect("  he Lo".pascalCase, "HeLo");
      expect("h".pascalCase, "H");
    });

    test("camelCase", () {
      expect("hello there".camelCase, "helloThere");
      expect("  he Lo".camelCase, "heLo");
      expect("h".camelCase, "h");
    });

    test("toggleCase", () {
      expect("HeLlo thERe".toggleCase, "hElLO THerE");
      expect("  ".toggleCase, "  ");
      expect("h".toggleCase, "H");
      expect("H".toggleCase, "h");
    });
  });
}
