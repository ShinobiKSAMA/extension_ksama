import 'package:flutter_test/flutter_test.dart';
import 'package:extension_ksama/date_time/date_time.dart';

void main() {
  group("Tests remove and onlyDate getters", () {
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

  group("Tests is(s) getters", () {
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
  });
}
