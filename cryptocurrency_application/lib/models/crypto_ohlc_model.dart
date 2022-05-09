

import 'package:json_annotation/json_annotation.dart';

part 'crypto_ohlc_model.g.dart';

@JsonSerializable()
class CryptoOhlcModel {
  final List ohlc;

  CryptoOhlcModel({
    required this.ohlc,
  });


  
factory CryptoOhlcModel.fromJson(Map<List, dynamic> json) =>
      _$CryptoOhlcModelFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoOhlcModelToJson(this);

}
