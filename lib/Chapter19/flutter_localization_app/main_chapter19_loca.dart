import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        CustomLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CustomLocalizations.of(context)!.title!),
      ),
      body: Center(
        child: Text(
          CustomLocalizations.of(context)!.message!,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}

class CustomLocalizations {
  CustomLocalizations(this.locale);

  final Locale locale;

  static CustomLocalizations? of(BuildContext context) {
    return Localizations.of<CustomLocalizations>(context, CustomLocalizations);
  }

  static final Map<String, Map<String, String>> _resources = {
    'en': {'title': 'ssss', 'message': 'Hello World'},
    'es': {
      'title': 'wdwd 19',
      'message': 'dwdd',
    },
  };

  String? get title {
    return _resources[locale.languageCode]!['title'];
  }

  String? get message {
    return _resources[locale.languageCode]!['message'];
  }
}

class CustomLocalizationsDelegate
    extends LocalizationsDelegate<CustomLocalizations> {
  const CustomLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<CustomLocalizations> load(Locale locale) {
    return SynchronousFuture<CustomLocalizations>(CustomLocalizations(locale));
  }

  @override
  bool shouldReload(CustomLocalizationsDelegate old) => false;
}
