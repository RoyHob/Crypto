import 'package:bloc/bloc.dart';
import 'package:cryptocurrency_application/blocs/crypto_bloc/bloc.dart';
import 'package:cryptocurrency_application/provider/crypto_provider.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  final CryptoProvider cryptoProvider;

  CryptoBloc(this.cryptoProvider) : super(InitialCryptoState()) {
    on<GetCryptoInformation>(
      (event, emit) async {
        final crypto = await cryptoProvider.getCryptoDetails(event.currency);
        emit(
          state.copyWith(crypto: crypto),
        );
      },
    );

    on<GetCryptoOhlcInformation>(
      ((event, emit) async {
        final ohlc = await cryptoProvider.getCryptoOhlcDetails();

        emit(state.copyWith(ohlc: ohlc));
      }),
    );
  }
}
