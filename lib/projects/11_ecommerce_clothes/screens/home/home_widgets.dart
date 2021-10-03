import 'package:flutter/material.dart';
import '../../models/clothes.dart';
import '../../screens/details/detail.dart';
import '../../constants_widgets.dart';

// titleBar
class TitleBar extends StatelessWidget {
  const TitleBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hello! .. What Are You\nLooking For? 👀',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0.1,
                          blurRadius: 0.1,
                          offset: const Offset(0, 1)),
                    ]),
                child: const Icon(Icons.shopping_cart_outlined),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(color: mainColor, shape: BoxShape.circle),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// searchBar
final tagsList = ['Woman', 'T-Shirt', 'Dressess'];

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
      child: Column(children: [
        Row(children: [
          Flexible(
            flex: 1,
            child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Search ...',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon:
                      const Icon(Icons.search_sharp, color: Colors.black),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset('assets/ecommerce_clothes/icons/filter.png',
                width: 25),
          ),
        ]),
        Row(
            children: tagsList
                .map((e) => Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xB6969696)),
                    child: Text(
                      e,
                      style: const TextStyle(color: Colors.white),
                    )))
                .toList()),
      ]),
    );
  }
}

// CategoriesList
class CategoriesList extends StatelessWidget {
  final String title;
  const CategoriesList(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(
            children: [
              Text(
                'View All',
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: mainColor),
                child: const Icon(Icons.arrow_forward_ios,
                    color: Colors.white, size: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}

// NewArrival
class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes();
  NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoriesList('New Arrival'),
        SizedBox(
            height: 270,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    ClothesItem(clothesList[index]),
                separatorBuilder: (_, index) => const SizedBox(width: 10),
                itemCount: clothesList.length)),
      ],
    );
  }
}

// ClothesItem
class ClothesItem extends StatelessWidget {
  final Clothes clothes;
  const ClothesItem(this.clothes, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DetailScreen(clothes)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 170,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(clothes.imageUrl),
                        fit: BoxFit.fitHeight,
                      )),
                ),
                Positioned(
                    right: 20,
                    top: 15,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      ),
                    ))
              ],
            ),
            Text(
              clothes.title,
              style: const TextStyle(fontWeight: FontWeight.bold, height: 1.5),
            ),
            Text(
              clothes.subtitle,
              style: const TextStyle(fontWeight: FontWeight.bold, height: 1.5),
            ),
            Text(
              clothes.price,
              style: TextStyle(
                  fontWeight: FontWeight.bold, height: 1.5, color: secondColor),
            ),
          ],
        ),
      ),
    );
  }
}

// bestSell
class BestSell extends StatelessWidget {
  const BestSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategoriesList('Best of sell'),
        Card(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                            'assets/ecommerce_clothes/images/best1.png',
                            width: 80),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Miniso woman oversize',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, height: 1.5),
                          ),
                          const Text(
                            'T-shirt',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, height: 1.5),
                          ),
                          Text(
                            '\$99.99',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                color: secondColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      ),
                    ))
              ],
            )),
      ],
    );
  }
}

// BottomBarList
final bottomList = ['home', 'menu', 'heart', 'user'];

class BottomBarList extends StatelessWidget {
  const BottomBarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: bottomList
          .map((e) => BottomNavigationBarItem(
              label: e,
              icon: Image.asset('assets/ecommerce_clothes/icons/$e.png',
                  width: 25)))
          .toList(),
    );
  }
}
