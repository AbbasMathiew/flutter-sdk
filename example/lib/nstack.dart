/// Generated by NStack, do not modify this file.

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:nstack/models/app_open_platform.dart';
import 'package:nstack/models/language.dart';
import 'package:nstack/models/localize_index.dart';
import 'package:nstack/models/nstack_config.dart';
import 'package:nstack/nstack.dart';
import 'package:nstack/partial/section_key_delegate.dart';

export 'package:nstack/models/app_open_platform.dart';

// Update this file by running:
// - `flutter pub run build_runner build`, if your package depends on Flutter
// - `pub run build_runner build` otherwise

class Localization {
  final defaultSection = const _DefaultSection();
  final test = const _Test();

  const Localization();
}

class _DefaultSection extends SectionKeyDelegate {
  const _DefaultSection() : super('default');

  String get title => get('title', "NStack SDK Demo");
  String get test => get('test', "test");
}

class _Test extends SectionKeyDelegate {
  const _Test() : super('test');

  String get testDollarSign => get('testDollarSign', "\$testing again new");
  String get testSingleQuotationMark =>
      get('testSingleQuotationMark', "\'testing\'");
  String get testDoubleQuotationMark =>
      get('testDoubleQuotationMark', "\"testing\"");
  String get testMultipleLines =>
      get('testMultipleLines', "testing\nmultiple\nlines\nupdated");
}

const _config = NStackConfig(
    projectId: 'h6wJremI2TGFM88gbLkdyljWQuwf2hxhxvCH',
    apiKey: 'zp2S18H32b67eYAbRQh94tVw76ZzaKKXlHjd');

final _languages = [
  LocalizeIndex(
      id: 1216,
      url: null,
      lastUpdatedAt: null,
      shouldUpdate: false,
      language: Language(
          id: 56,
          name: 'English',
          locale: 'en-EN',
          direction: 'LRM',
          isDefault: true,
          isBestFit: true)),
  LocalizeIndex(
      id: 1270,
      url: null,
      lastUpdatedAt: null,
      shouldUpdate: false,
      language: Language(
          id: 7,
          name: 'German (Austria)',
          locale: 'de-AT',
          direction: 'LRM',
          isDefault: false,
          isBestFit: false)),
];

const _bundledTranslations = {
  'en-EN':
      r'''{"data":{"default":{"title":"NStack SDK Demo","test":"test"},"test":{"testDollarSign":"$testing again new","testSingleQuotationMark":"'testing'","testDoubleQuotationMark":"\"testing\"","testMultipleLines":"testing\nmultiple\nlines\nupdated"}},"meta":{"language":{"id":56,"name":"English","locale":"en-EN","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":515,"slug":"mobile"}}}''',
  'de-AT':
      r'''{"data":{"default":{"title":"NStack SDK Demo","test":"test"},"test":{"testDollarSign":"\u00a0","testSingleQuotationMark":"__testSingleQuotationMark","testDoubleQuotationMark":"__testDoubleQuotationMark","testMultipleLines":"__testMultipleLines"}},"meta":{"language":{"id":7,"name":"German (Austria)","locale":"de-AT","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":515,"slug":"mobile"}}}''',
};

final _nstack = NStack<Localization>(
    config: _config,
    localization: const Localization(),
    availableLanguages: _languages,
    bundledTranslations: _bundledTranslations,
    pickedLanguageLocale: '',
    debug: kDebugMode);

class NStackScope extends InheritedWidget {
  final NStack<Localization> nstack;
  final NStackState state;
  final String checksum;

  NStackScope(
      {Key? key,
      required Widget child,
      required this.state,
      required this.nstack,
      required this.checksum})
      : super(key: key, child: child);

  static NStackState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<NStackScope>()!.state;

  @override
  bool updateShouldNotify(NStackScope oldWidget) =>
      checksum != oldWidget.checksum;
}

class NStackWidget extends StatefulWidget {
  final Widget child;
  final AppOpenPlatform? platformOverride;
  final VoidCallback? onComplete;

  const NStackWidget(
      {Key? key, required Widget child, this.platformOverride, this.onComplete})
      : child = child,
        super(key: key);

  @override
  NStackState createState() => NStackState();
}

class NStackState extends State<NStackWidget> {
  final NStack<Localization> nstack = _nstack;
  bool _initializedNStack = false;

  late Future<bool> _nstackInitFuture;

  @override
  void initState() {
    super.initState();
    _nstackInitFuture = _nstack.init();
  }

  changeLanguage(Locale locale) async {
    await _nstack
        .changeLocalization(locale)
        .whenComplete(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    if (!_initializedNStack) {
      _nstack
          .appOpen(Localizations.localeOf(context),
              platformOverride: widget.platformOverride)
          .whenComplete(() => widget.onComplete?.call());
      _initializedNStack = true;
    }

    return FutureBuilder(
        future: _nstackInitFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return NStackScope(
              child: widget.child,
              state: this,
              nstack: this.nstack,
              checksum: nstack.checksum,
            );
          } else {
            return SizedBox();
          }
        });
  }
}

/// Allows to access the Nstack Localization using the BuildContext
extension NStackWidgetExtension on BuildContext {
  Localization get localization => NStackScope.of(this).nstack.localization;
}

/// Allows to access the Nstack Localization from StatefulWidget's State
extension NStackStateExtension<T extends StatefulWidget> on State<T> {
  Localization get localization => context.localization;
}
