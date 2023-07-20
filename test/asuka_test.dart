import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('erro when not called build method', () {
    expect(() => Asuka.showSnackBar(SnackBar(content: Container())),
        throwsAssertionError);
    expect(
        () => Asuka.showMaterialBanner(MaterialBanner(
              content: Container(),
              actions: [SizedBox.shrink()],
            )),
        throwsAssertionError);
    expect(() => Asuka.hideCurrentSnackBar(), throwsAssertionError);
    expect(() => Asuka.removeCurrentSnackBar(), throwsAssertionError);
    expect(() => Asuka.hideCurrentMaterialBanner(), throwsAssertionError);
    expect(() => Asuka.removeCurrentMaterialBanner(), throwsAssertionError);
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
