class Products {
  final String name;
  final int price;
  final String image;
  int count;

  Products({required this.name, required this.price, required this.image, this.count = 1});
}
