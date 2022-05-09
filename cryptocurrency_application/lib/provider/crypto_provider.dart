import 'dart:convert';
import 'package:cryptocurrency_application/models/crypto_ohlc_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:cryptocurrency_application/models/crypto_model.dart';

class CryptoProvider {
  Future<List<CryptoModel>> getCryptoDetails(String currency) async {
    return http
        .get(
      Uri.parse(
          "https://api.coingecko.com/api/v3/coins/markets?vs_currency=$currency&order=market_cap_desc&per_page=100&page=1&sparkline=false"),
    )
        .then((response) {
      // debugPrint(response.body);

      return List.from(
        json.decode(response.body),
      ).map((e) => CryptoModel.fromJson(e)).toList();
    });
  }

  Future<List<CryptoOhlcModel>> getCryptoOhlcDetails() async {
    return http
        .get(
      Uri.parse(
          "https://api.coingecko.com/api/v3/coins/bitcoin/ohlc?vs_currency=usd&days=1"),
    )
        .then((response) {
      debugPrint(response.toString());

      return List.from(
        json.decode(response.body),
      ).map((e) => CryptoOhlcModel.fromJson(e)).toList();
    });
  }
}
