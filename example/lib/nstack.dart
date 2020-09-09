/// Generated by NStack, do not modify this file.

import 'package:flutter/widgets.dart';
import 'package:nstack_api/entities/language.dart';
import 'package:nstack_api/entities/nstack_config.dart';
import 'package:nstack_sdk/nstack.dart';
import 'package:nstack_sdk/section_key_delegate.dart';

// Update this file by running:
// - `flutter pub run build_runner build`, if your package depends on Flutter
// - `pub run build_runner build` otherwise
      
class Localization {
	final defaultSection = const _DefaultSection();
	final test = const _Test();

	const Localization();
}

class _DefaultSection extends SectionKeyDelegate {
	const _DefaultSection(): super('default');

	String get title => get('title', "NStack SDK Demo");
}

class _Test extends SectionKeyDelegate {
	const _Test(): super('test');

	String get testDollarSign => get('testDollarSign', "\$testing");
	String get testSingleQuotationMark => get('testSingleQuotationMark', "\'testing\'");
	String get testDoubleQuotationMark => get('testDoubleQuotationMark', "\"testing\"");
	String get testMultipleLines => get('testMultipleLines', "testing\nmultiple\nlines");
}

const _config = NStackConfig(projectId: 'h6wJremI2TGFM88gbLkdyljWQuwf2hxhxvCH', apiKey: 'zp2S18H32b67eYAbRQh94tVw76ZzaKKXlHjd');
    
const _languages = [
	Language(id: 56, name: 'English', locale: 'en-EN', direction: 'LRM', isDefault: true, isBestFit: true),
];

const _bundledTranslations = {
	'en-EN': '{\"data\":{\"default\":{\"title\":\"NStack SDK Demo\"},\"test\":{\"testDollarSign\":\"\$testing\",\"testSingleQuotationMark\":\"\'testing\'\",\"testDoubleQuotationMark\":\"\\"testing\\"\",\"testMultipleLines\":\"testing\nmultiple\nlines\"}},\"meta\":{\"language\":{\"id\":56,\"name\":\"English\",\"locale\":\"en-EN\",\"direction\":\"LRM\",\"is_default\":false,\"is_best_fit\":false},\"platform\":{\"id\":515,\"slug\":\"mobile\"}}}',
};

final _localization = const Localization();

final _nstack = NStack(
  config: _config,
);

class NStackWidget extends InheritedWidget {
  final NStack nstack = _nstack;

  NStackWidget({Key key, @required Widget child})
      : assert(child != null),
        super(key: key, child: child);

  static NStack of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<NStackWidget>().nstack;

  @override
  bool updateShouldNotify(NStackWidget oldWidget) =>
      nstack != oldWidget.nstack;
}

class NStackInitWidget extends StatefulWidget {
  final Widget child;

  const NStackInitWidget({Key key, Widget child})
      : child = child,
        super(key: key);

  @override
  _NStackInitState createState() => _NStackInitState();
}

class _NStackInitState extends State<NStackInitWidget> {
  static bool _initialized = false;

  void setupNStack(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final nstack = NStackWidget.of(context);
    nstack.postAppOpen(locale);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      setupNStack(context);
      _initialized = true;
    }
    return widget.child;
  }
}

/// Allows to access the Nstack Localization using the BuildContext
extension NStackWidgetExtension on BuildContext {
	Localization get localization => _localization;
}

/// Allows to access the Nstack Localization from StatefulWidget's State
extension NStackStateExtension<T extends StatefulWidget> on State<T> {
	Localization get localization => context.localization;
}

