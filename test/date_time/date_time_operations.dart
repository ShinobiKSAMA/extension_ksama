part of date_time_tests;

void dateTimeOperations() {
  group("DateTime operations tests", () {
    final testDate = DateTime.now();

    test("nextDay", () {
      expect(testDate.nextDay, testDate.add(const Duration(days: 1)).onlyDate);
      expect(testDate.nextDay.nextDay,
          testDate.add(const Duration(days: 2)).onlyDate);
    });

    test("prevDay", () {
      expect(testDate.prevDay,
          testDate.subtract(const Duration(days: 1)).onlyDate);
      expect(testDate.prevDay.prevDay,
          testDate.subtract(const Duration(days: 2)).onlyDate);
    });

    test("nextYear", () {
      expect(testDate.nextYear,
          DateTime(testDate.year + 1, testDate.month, testDate.day));
      expect(testDate.nextYear.nextYear,
          DateTime(testDate.year + 2, testDate.month, testDate.day));
    });

    test("prevYear", () {
      expect(testDate.prevYear,
          DateTime(testDate.year - 1, testDate.month, testDate.day));
      expect(testDate.prevYear.prevYear,
          DateTime(testDate.year - 2, testDate.month, testDate.day));
    });
  });
}
