@HtmlImport('icon_toggle.html')
library pdcl_first_elements.lib.icon_toggle;

import 'dart:html';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/iron_icon.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('icon-toggle')
class IconToggle extends PolymerElement {

  @property
  String toggleIcon;

  @Property(notify: true, reflectToAttribute: true)
  bool pressed = false;

  IconToggle.created() : super.created();

  void ready() {
    print("$runtimeType::ready()");
  }

  @Listen('tap')
  void toggle(Event event, Map detail) {
    set('pressed', !pressed);
  }
}