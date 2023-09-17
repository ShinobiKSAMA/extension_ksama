part of date_time_tests;

void dateTimeCheckers() {
  group("DateTime Checkers Tests", () {
    test('isToday test', () {
      final testDate = DateTime.now();
      expect(testDate.isToday, true);
      expect(testDate.nextDay.isToday, false);
      expect(testDate.nextYear.isToday, false);
      expect(DateTime(4500).isToday, false);
    });

    test('isTomorrow test', () {
      final testDate = DateTime.now();
      expect(testDate.isTomorrow, false);
      expect(testDate.nextDay.isTomorrow, true);
      expect(testDate.nextYear.isTomorrow, false);
      expect(DateTime(4500).isTomorrow, false);
    });

    test('isYesterday test', () {
      final testDate = DateTime.now();
      expect(testDate.isYesterday, false);
      expect(testDate.prevDay.isYesterday, true);
      expect(testDate.nextYear.isYesterday, false);
      expect(DateTime(4500).isYesterday, false);
    });

    test('isWeekday test', () {
      expect(DateTime.parse('2023-09-16 20:18:00.123456789z').isWeekday, false);
      expect(DateTime.parse('2023-09-12 20:18:00.123456789z').isWeekday, true);
    });

    test('isWeekend test', () {
      expect(DateTime.parse('2023-09-16 20:18:00.123456789z').isWeekend, true);
      expect(DateTime.parse('2023-09-12 20:18:00.123456789z').isWeekend, false);
    });
  });
}
