part of string_tests;

void stringValidators() {
  group("String validators tests", () {
    test("isEmail", () {
      expect("  ".isEmail, false);
      expect("12.5".isEmail, false);
      expect("hellp".isEmail, false);
      expect("asl@gmail".isEmail, false);
      expect("asl@gmail.com".isEmail, true);
      expect("asl@.com".isEmail, false);
    });

    test("isISBN", () {
      expect("  ".isISBN, false);
      expect("12.5".isISBN, false);
      expect("hellp".isISBN, false);
      expect("3598215088".isISBN, true);
      expect("3-598-21508-8".isISBN, true);
      expect("3-598-X1508-8".isISBN, false);
    });

    test("isIPv4", () {
      expect("  ".isIPv4, false);
      expect("12.5".isIPv4, false);
      expect("hellp".isIPv4, false);
      expect("192.168.1.1".isIPv4, true);
      expect("192.001.001.001".isIPv4, false);
      expect("192.168.1.1.1".isIPv4, false);
    });

    test("isIPv6", () {
      expect("  ".isIPv6, false);
      expect("12.5".isIPv6, false);
      expect("hellp".isIPv6, false);
      expect("2001:0db8:85a3:0000:0000:8a2e:0370:7334".isIPv6, true);
      expect("2001:db8:85a3::8a2e:370:7334".isIPv6, true);
      expect("2001:0db8:85a3:0000:0000:8a2e:0370:ghij".isIPv6, false);
    });

    test("isPhone", () {
      expect("  ".isPhone, false);
      expect("12.5".isPhone, false);
      expect("hellp".isPhone, false);
      expect("+1786-307-3615".isPhone, true);
      expect("+911234567891".isPhone, true);
      expect("555-5555".isPhone, false);
    });
  });
}
