import 'package:cryptocurrency_application/provider/crypto_provider.dart';
import 'package:cryptocurrency_application/ui/navigation/navigation.dart';
import 'package:cryptocurrency_application/ui/pages/chart_page.dart';
import 'package:cryptocurrency_application/ui/pages/favorite_coin_page.dart';
import 'package:cryptocurrency_application/ui/pages/home_page.dart';
import 'package:cryptocurrency_application/ui/pages/settings.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final CryptoProvider cryptoProvider;
  const MyApp({Key? key, required this.cryptoProvider}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: isLight?ThemeData(
        primaryColor: Colors.blue,
      ):ThemeData(
        primaryColor: Colors.red,),
      // home: const MyHomePage(),
      initialRoute: Routes.homeRoute,
      onGenerateRoute: (settings) {
        if (settings.name == Routes.favoriteRoute) {
          return MaterialPageRoute(builder: (context) => const FavoriteCoin());
        }
        return MaterialPageRoute(
          builder: (context) =>  MyHomePage(),
        );
      },
    );
  }
}
