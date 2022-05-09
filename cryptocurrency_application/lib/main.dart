import 'package:cryptocurrency_application/blocs/crypto_bloc/bloc.dart';
import 'package:cryptocurrency_application/provider/crypto_provider.dart';
import 'package:cryptocurrency_application/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final cryptoProvider = CryptoProvider();
  runApp(
     BlocProvider<CryptoBloc>(
    create: (context) => CryptoBloc(cryptoProvider),
    child: MyApp(cryptoProvider:cryptoProvider),
  ));
}
