library tekartik_bootstrap.loader;

import 'package:tekartik_browser_utils/js_utils.dart';
import 'package:tekartik_browser_utils/css_utils.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:tekartik_jquery/jquery.dart';
import 'dart:async';
import 'bootstrap.dart';

Future loadBootstrapJs({Version version}) async {
  if (version == null) {
    version = bootstrapVersionDefault;
  }

  // make sure jQuery is loaded
  // this will throw if not
  jQuery;
  //print(jsObjectToDebugString(jQuery.jsObject));
  // load jquery
  await loadJavascriptScript(
      "packages/tekartik_bootstrap_asset/$version/js/bootstrap.min.js");
  //print(jsObjectToDebugString(jQuery.jsObject));
}

Future loadBootstrapCss({Version version}) async {
  if (version == null) {
    version = bootstrapVersionDefault;
  }
  await loadStylesheet(
      "packages/tekartik_bootstrap_asset/$version/css/bootstrap.min.css");
}

Future loadBootstrapThemeCss({Version version}) async {
  if (version == null) {
    version = bootstrapVersionDefault;
  }
  await loadStylesheet(
      "packages/tekartik_bootstrap_asset/$version/css/bootstrap-theme.min.css");
}
