// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:store_pro/counter/counter.dart';
import 'package:store_pro/l10n/l10n.dart';
import 'package:store_pro/product_store/views/home_view.dart';
import 'package:store_pro/themes/styles.dart';
import 'package:velocity_x/velocity_x.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return VxApp(
      store: MyStore(),
      builder: (context, VxAppData) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: Styles.lightColorScheme,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: Styles.darkColorScheme,
        ),
        themeMode: ThemeMode.system,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const HomeView(),
      ),
    );
  }
}

class MyStore extends VxStore {}
