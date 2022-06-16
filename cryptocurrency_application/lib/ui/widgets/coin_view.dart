import 'package:cryptocurrency_application/constants/colors.dart';
import 'package:cryptocurrency_application/constants/style.dart';
import 'package:flutter/material.dart';

class CoinView extends StatefulWidget {
  final String image;
  final String name;
  final String symbol;
  final double currentPrice;
  final double priceChange24;
  final double priceChangePercentage24;

  const CoinView(
      {required this.image,
      required this.name,
      required this.symbol,
      Key? key,
      required this.currentPrice,
      required this.priceChange24,
      required this.priceChangePercentage24})
      : super(key: key);

  @override
  State<CoinView> createState() => _CoinViewState();
}

class _CoinViewState extends State<CoinView> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: greyColor[300],
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
                color: greyColor,
                offset: Offset(4, 4),
                blurRadius: 10,
                spreadRadius: 1),
            BoxShadow(
                color: whiteColor,
                offset: Offset(-4, -4),
                blurRadius: 10,
                spreadRadius: 1),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: CircleAvatar(
                backgroundColor: whiteColor,
                radius: 25,
                backgroundImage: NetworkImage(widget.image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: coinTitle,
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Text(widget.symbol)
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${widget.currentPrice.toStringAsFixed(1)} \$",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${widget.priceChange24 < 0 ? widget.priceChange24.toStringAsFixed(2) : "+ " + widget.priceChange24.toStringAsFixed(2)}  ",
                    style: TextStyle(
                        color:
                            widget.priceChange24 < 0 ? redColor : greenColor),
                  ),
                  Row(
                    children: [
                      Icon(
                          widget.priceChangePercentage24 > 0
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: widget.priceChangePercentage24 > 0
                              ? greenColor
                              : redColor),
                      Text(
                        "${widget.priceChangePercentage24 < 0 ? widget.priceChangePercentage24.toStringAsFixed(2) : "+ " + widget.priceChangePercentage24.toStringAsFixed(2)}%",
                        style: TextStyle(
                            color: widget.priceChange24 < 0
                                ? redColor
                                : greenColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: IconButton(
                icon: const Icon(Icons.favorite),
                color: isFavorite?Colors.red:Colors.grey,
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                  
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
