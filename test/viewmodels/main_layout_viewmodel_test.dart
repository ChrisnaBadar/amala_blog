import 'package:flutter_test/flutter_test.dart';
import 'package:amala_blog/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('MainLayoutViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
