import 'package:carousel_slider/carousel_slider.dart';
import '../../constants_widgets.dart';
import 'package:flutter/material.dart';

// import '../../constants_widgets.dart';
import '../../models/clothes.dart';

class ClothesDetailImage extends StatefulWidget {
  final Clothes clothes;
  const ClothesDetailImage(this.clothes, {Key? key}) : super(key: key);

  @override
  _ClothesDetailImageState createState() => _ClothesDetailImageState();
}

class _ClothesDetailImageState extends State<ClothesDetailImage> {
  final CarouselController _controller = CarouselController();
  int currentImage = 0;
  int currentColor = 0;
  final List<Color> colors = [
    const Color(0xFFE6CFC6),
    const Color(0xFFEEDFB5),
    const Color(0xFFCAE2C5),
    const Color(0xFFBAE6EE),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          items: widget.clothes.detailUrl
              .map((e) => Builder(
                    builder: (context) => Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.fitHeight),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
              height: 500,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentImage = index;
                });
              }),
        ),
        Positioned(
          bottom: 30,
          left: 180,
          child: Row(
            children: widget.clothes.detailUrl
                .asMap()
                .entries
                .map(
                  (e) => GestureDetector(
                    onTap: () => _controller.animateToPage(e.key),
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(
                                currentImage == e.key ? 0.9 : 0.4))),
                  ),
                )
                .toList(),
          ),
        ),
        Positioned(
          bottom: 30,
          right: 30,
          child: Container(
            height: 175,
            width: 50,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(30)),
            child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentColor = index;
                      });
                    },
                    child: ColorPicker(currentColor == index, colors[index])),
                separatorBuilder: (_, index) => const SizedBox(height: 3),
                itemCount: colors.length),
          ),
        ),
        Container(
            padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.arrow_back_ios,
                          color: Colors.grey, size: 20),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle),
                    child: const Icon(Icons.more_horiz,
                        color: Colors.grey, size: 20)),
              ],
            )),
      ],
    );
  }
}

class ColorPicker extends StatelessWidget {
  final bool outerBorder;
  final Color color;

  const ColorPicker(this.outerBorder, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: outerBorder ? Border.all(color: color, width: 2) : null),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

class ClothesDetailInfo extends StatelessWidget {
  final Clothes clothes;
  const ClothesDetailInfo(this.clothes, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                '${clothes.title} ${clothes.subtitle}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    shape: BoxShape.circle),
                child: const Icon(Icons.favorite, color: Colors.red, size: 15),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.star_border, color: mainColor),
                  Text(
                    '4.5 (2.7k)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: secondColor),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'texttexttexttexttext',
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.7), height: 1.5),
                  ),
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(color: mainColor),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class SizeList extends StatefulWidget {
  const SizeList({Key? key}) : super(key: key);

  @override
  _SizeListState createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  final List<String> sizeList = ['S', 'M', 'L', 'XL', 'XXL'];
  int currentSelected = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelected = index;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color:
                          currentSelected == index ? secondColor : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.1), width: 2)),
                  child: Text(
                    sizeList[index],
                    style: TextStyle(
                        color:
                            currentSelected == index ? mainColor : Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 10),
          itemCount: sizeList.length),
    );
  }
}

class PriceOrderNow extends StatelessWidget {
  const PriceOrderNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Price:',
              ),
              Text(
                '\$99.99',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: mainColor,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('Order Now'),
          ),
        ],
      ),
    );
  }
}
