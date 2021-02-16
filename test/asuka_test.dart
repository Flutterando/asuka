import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:asuka/asuka.dart' as asuka;

void main() {
  test('erro when not called build method', () {
    expect(() => asuka.showSnackBar(SnackBar(content: Container())), throwsAssertionError);
    expect(() => asuka.hideCurrentSnackBar(), throwsAssertionError);
    expect(() => asuka.removeCurrentSnackBar(), throwsAssertionError);
    expect(() => asuka.showBottomSheet((e) => Container()), throwsAssertionError);
    expect(() => asuka.showDialog(builder: (e) => Container()), throwsAssertionError);
  });
}
