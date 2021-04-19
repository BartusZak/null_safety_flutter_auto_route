import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'routing/AppRouter.gr.dart';
import 'routing/guards/AudiobookAccessGuard.dart';
import 'routing/guards/AuthGuard.dart';
import 'themes/NoTransitionsOnWeb.dart';

class MyMaterialApp extends StatefulWidget {
  @override
  _MyMaterialAppState createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  final _appRouter = AppRouter(
    authGuard: AuthGuard(),
    audiobookAccessGuard: AudiobookAccessGuard(),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      key: _navigatorKey,
      title: 'Interaktywne Multibooki',
      theme: ThemeData(
        pageTransitionsTheme: NoTransitionsOnWeb(),
        primarySwatch: Colors.grey,
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: EasyLoading.init(builder: (context, child) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return buildError(context, errorDetails);
        };
        return child!;
      }),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        const Locale('en', 'US'),
        const Locale('pl', 'PL'),
      ],
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }

  Widget buildError(BuildContext context, FlutterErrorDetails error) {
    print(error);
    return Scaffold(
        // appBar: ApplicationBar(title: 'Application Error'),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('Error Occured.', style: Theme.of(context).textTheme.headline6),
      Divider(),
    ]));
  }
}
