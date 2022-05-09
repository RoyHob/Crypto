import 'package:cryptocurrency_application/blocs/crypto_bloc/bloc.dart';
import 'package:cryptocurrency_application/constants/colors.dart';
import 'package:cryptocurrency_application/constants/style.dart';
import 'package:cryptocurrency_application/ui/navigation/navigation.dart';
import 'package:cryptocurrency_application/ui/pages/settings.dart';
import 'package:cryptocurrency_application/ui/widgets/coin_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  String currencytype = isUsd?"usd":"eur";

  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    context
        .read<CryptoBloc>()
        .add(GetCryptoInformation(currency: widget.currencytype));

    // context.read<CryptoBloc>().add(GetCryptoOhlcInformation());
  }
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: greyColor.shade200,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
              // navigateToFavoriteRoute;
            },
            icon: const Icon(Icons.favorite),
            color: redColor,
          ),
          title: const Center(
              child: Text(
            "Market",
            style: appBarTitle,
          )),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              icon: const Icon(Icons.settings),
              color: blackColor,
            ),
            const SizedBox(
              width: 12.0,
            ),
          ],
        ),
        body: BlocBuilder<CryptoBloc, CryptoState>(
          builder: (context, state) {
            debugPrint("The current crypto is ${state.crypto?.last}");

            if (state.crypto == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state.crypto != null) {}
            return RefreshIndicator(
              onRefresh: _refresh,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => {
                      print(state.ohlc),
                      print(state.crypto![index]?.name ?? "")
                    },
                    child: CoinView(
                      image: state.crypto![index]?.image ?? "",
                      name: state.crypto![index]?.name ?? "",
                      symbol: state.crypto![index]?.symbol ?? "",
                      currentPrice: state.crypto![index]?.currentPrice ?? 0.0,
                      priceChange24:
                          state.crypto![index]?.priceChange24! ?? 0.0,
                      priceChangePercentage24:
                          state.crypto![index]?.priceChangePercentage24! ?? 0.0,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _refresh() {
    setState(() {
      context
          .read<CryptoBloc>()
          .add(GetCryptoInformation(currency: widget.currencytype));
    });
    print("${widget.currencytype} ===============");

    return Future.delayed(const Duration(seconds: 1));
  }
}
