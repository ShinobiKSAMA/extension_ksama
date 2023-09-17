part of date_time_tests;

void dateTimeManipulators() {
  group("DateTime manipulators tests", () {
    test('onlyDate test', () {
      final dateOnly = DateTime.now().onlyDate;
      expect(dateOnly.hour, 0);
      expect(dateOnly.minute, 0);
      expect(dateOnly.second, 0);
      expect(dateOnly.millisecond, 0);
      expect(dateOnly.microsecond, 0);
    });

    test('remove test', () {
      final testDate = DateTime.now();
      expect(testDate.removeMicros.microsecond, 0);
      expect(testDate.removeMillis.millisecond, 0);
      expect(testDate.removeSeconds.second, 0);
      expect(testDate.removeMinutes.minute, 0);
    });
  });
}
