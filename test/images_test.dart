import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:space_project/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.authPicture).existsSync(), true);
    expect(File(Images.cIcon).existsSync(), true);
    expect(File(Images.cLogoIcon).existsSync(), true);
  });
}
