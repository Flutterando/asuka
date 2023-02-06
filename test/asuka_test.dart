import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:asuka/asuka.dart';

void main() {
  test('erro when not called build method', () {
    expect(() => Asuka.showSnackBar(SnackBar(content: Container())),
        throwsAssertionError);
    expect(() => Asuka.hideCurrentSnackBar(), throwsAssertionError);
    expect(() => Asuka.removeCurrentSnackBar(), throwsAssertionError);
    expect(
        () => Asuka.showBottomSheet((e) => Container()), throwsAssertionError);
    expect(() => Asuka.showCupertinoModalPopup(builder: (e) => Container()),
        throwsAssertionError);
    expect(() => Asuka.showDialog(builder: (e) => Container()),
        throwsAssertionError);
    expect(() => Asuka.showCupertinoDialog(builder: (e) => Container()),
        throwsAssertionError);
  });
}
