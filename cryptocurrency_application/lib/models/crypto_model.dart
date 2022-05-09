import 'package:json_annotation/json_annotation.dart';

part 'crypto_model.g.dart';

@JsonSerializable()
class CryptoModel {
  final String? id;
  final String? symbol;
  final String? name;
  final String? image;
  @JsonKey(name: "current_price")
  final double? currentPrice;
  @JsonKey(name: "market_cap")
  final double? marketCap;
  @JsonKey(name: "market_cap_rank")
  final int? marketCapRank;
  @JsonKey(name: "total_volume")
  final double? totalVolume;
  @JsonKey(name: "high_24h")
  final double? hight24;
  @JsonKey(name: "low_24h")
  final double? low24;
  @JsonKey(name: "price_change_24h")
  final double? priceChange24;
  @JsonKey(name: "price_change_percentage_24h")
  final double? priceChangePercentage24;
  @JsonKey(name: "circulating_supply")
  final double? circulatingSupply;
  @JsonKey(name: "total_supply")
  final double? totalSupply;
  @JsonKey(name: "max_supply")
  final double? maxSupply;
  final double? ath;
  final double? atl;

  CryptoModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.marketCap,
    required this.marketCapRank,
    required this.totalVolume,
    required this.hight24,
    required this.low24,
    required this.priceChange24,
    required this.priceChangePercentage24,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.ath,
    required this.atl,
  });

  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    return _$CryptoModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CryptoModelToJson(this);
}
