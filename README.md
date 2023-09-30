# extension_ksama

Collection of must have extensions on DateTime, String, BuildContext and many more.

<p align="center">
  <a href="#getting-started">Getting Started</a> •
  <a href="#list-of-extensions">Extensions</a>
</p>

<ul>
  <a href="#extensions-on-datetime">DateTime</a><br/>
  <a href="#extensions-on-string">String</a><br/>
  <a href="#extensions-on-buildcontext">BuildContext</a><br/>
</ul>

## Getting started

Import

```dart
import 'package:extension/_ksamaextension_ksama.dart';
``` 

## List of Extensions

Currently we have following extensions getters, operators and methods.

#### **Extensions on DateTime:**
    - DateTime get onlyDate
    - DateTime get removeMicros
    - DateTime get removeMillis
    - DateTime get removeSeconds
    - DateTime get removeMinutes
    - DateTime get nextDay
    - DateTime get prevDay
    - DateTime get nextYear
    - DateTime get prevYear
    - bool get isToday
    - bool get isTomorrow
    - bool get isYesterday
    - bool get isWeekend
    - bool get isWeekday

#### **Extensions on String:**
    - String get capitalisation
    - String get titleCase
    - String get pascalCase
    - String get camelCase
    - String get toggleCase
    - String get reverse
    - List<String> get tokenise
    - String get abbreviate
    - int? toInt({int? base})
    - double? toDouble()
    - bool? toBool()
    - bool get isBlanksOnly
    - bool get isEmail
    - bool get isISBN
    - bool get isIPv4
    - bool get isIPv6
    - bool get isDecimal
    - bool get isBinary
    - bool get isOctal
    - bool get isHexadecimal
    - bool get isDouble
    - bool get isBool

#### **Extensions on BuildContext:**
    - ThemeData get theme
    - ColorScheme get colorScheme
    - TextTheme get textTheme
