part of date_time_tests;

void dateTimeComparators() {
  group("DateTime Comparators tests", () {
    final testDate = DateTime.parse('2023-09-16 20:18:00.123456789z');
    final testDate2 = DateTime.parse('2023-09-12 20:18:00.123456789z');

    test("isGreaterThan", () {
      expect(testDate > testDate2, true);
      expect(testDate > testDate, false);
      expect(testDate2 > testDate, false);
    });

    test("isGreaterThanAndEqualTo", () {
      expect(testDate >= testDate2, true);
      expect(testDate >= testDate, true);
      expect(testDate2 >= testDate, false);
    });

    test("isLessThan", () {
      expect(testDate < testDate2, false);
      expect(testDate < testDate, false);
      expect(testDate2 < testDate, true);
    });

    test("isLessThanAndEqualTo", () {
      expect(testDate <= testDate2, false);
      expect(testDate <= testDate, true);
      expect(testDate2 <= testDate, true);
    });
  });
}
