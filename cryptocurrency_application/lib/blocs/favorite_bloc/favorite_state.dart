import 'package:cryptocurrency_application/models/crypto_model.dart';
import 'package:cryptocurrency_application/models/crypto_ohlc_model.dart';

class CryptoState {
  final List<CryptoModel?>? crypto;
  final List<CryptoOhlcModel?>? ohlc;

  CryptoState({this.crypto, this.ohlc});

  CryptoState copyWith({

    List<CryptoModel?>? crypto,
    List<CryptoOhlcModel?>? ohlc,
  }) {
    return CryptoState(crypto: crypto,ohlc: ohlc);
  }
}

class InitialCryptoState extends CryptoState {  
  InitialCryptoState();
}
