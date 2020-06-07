import 'package:flutter_test/flutter_test.dart';

import 'package:asuka/asuka.dart' as asuka;

void main() {
  test('erro when not called build method', () {
    expect(() => asuka.showSnackBar(null), throwsAssertionError);
    expect(() => asuka.hideCurrentSnackBar(), throwsAssertionError);
    expect(() => asuka.removeCurrentSnackBar(), throwsAssertionError);
    expect(() => asuka.showBottomSheet(null), throwsAssertionError);
  });
}
