@TestOn("browser")
library jquery_browser_test;

import 'package:tekartik_jquery/jquery.dart';
import 'package:tekartik_jquery/jquery_loader.dart';
import 'package:tekartik_browser_utils/js_utils.dart';
import 'package:tekartik_bootstrap/bootstrap_loader.dart';
import 'package:tekartik_bootstrap/bootstrap.dart';
import 'package:test/test.dart';
import 'dart:js';
import 'dart:html';

void main() {

  setUp(() async {
    await loadJQuery();
    await loadBootstrapJs();
  });

  group('alert', () {
    test('version', () {
      expect(jQuery.fn('alert')['Constructor']['VERSION'], bootstrapVersionDefault.toString());
    });
  });


}
