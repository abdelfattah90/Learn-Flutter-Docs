import 'package:flutter/material.dart';
import 'detail_widgets.dart';
import '../../models/clothes.dart';

class DetailScreen extends StatelessWidget {
  final Clothes clothes;
  const DetailScreen(this.clothes, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClothesDetailImage(clothes),
            ClothesDetailInfo(clothes),
            const SizeList(),
            const PriceOrderNow(),
          ],
        ),
      )),
    );
  }
}
