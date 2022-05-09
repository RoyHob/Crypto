// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoModel _$CryptoModelFromJson(Map<String, dynamic> json) => CryptoModel(
      id: json['id'] as String?,
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      currentPrice: (json['current_price'] as num?)?.toDouble(),
      marketCap: (json['market_cap'] as num?)?.toDouble(),
      marketCapRank: json['market_cap_rank'] as int?,
      totalVolume: (json['total_volume'] as num?)?.toDouble(),
      hight24: (json['high_24h'] as num?)?.toDouble(),
      low24: (json['low_24h'] as num?)?.toDouble(),
      priceChange24: (json['price_change_24h'] as num?)?.toDouble(),
      priceChangePercentage24:
          (json['price_change_percentage_24h'] as num?)?.toDouble(),
      circulatingSupply: (json['circulating_supply'] as num?)?.toDouble(),
      totalSupply: (json['total_supply'] as num?)?.toDouble(),
      maxSupply: (json['max_supply'] as num?)?.toDouble(),
      ath: (json['ath'] as num?)?.toDouble(),
      atl: (json['atl'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CryptoModelToJson(CryptoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'market_cap': instance.marketCap,
      'market_cap_rank': instance.marketCapRank,
      'total_volume': instance.totalVolume,
      'high_24h': instance.hight24,
      'low_24h': instance.low24,
      'price_change_24h': instance.priceChange24,
      'price_change_percentage_24h': instance.priceChangePercentage24,
      'circulating_supply': instance.circulatingSupply,
      'total_supply': instance.totalSupply,
      'max_supply': instance.maxSupply,
      'ath': instance.ath,
      'atl': instance.atl,
    };
