class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String> detailUrl;
  Clothes(this.title, this.subtitle, this.price, this.imageUrl, this.detailUrl);
  static List<Clothes> generateClothes() {
    return [
      Clothes(
        'Gucci oversize',
        'Hoodie',
        '\$9.99',
        'assets/ecommerce_clothes/images/arrival1.png',
        [
          'assets/ecommerce_clothes/images/arrival1.png',
          'assets/ecommerce_clothes/images/detail2.png'
        ],
      ),
      Clothes(
        'Men coat',
        'Rain-Jacket',
        '\$19.99',
        'assets/ecommerce_clothes/images/arrival2.png',
        [
          'assets/ecommerce_clothes/images/arrival2.png',
          'assets/ecommerce_clothes/images/detail3.png'
        ],
      ),
    ];
  }
}
