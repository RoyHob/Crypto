abstract class CryptoEvent {}

class GetCryptoInformation extends CryptoEvent {
  final String currency;

  GetCryptoInformation({required this.currency});
  
}
