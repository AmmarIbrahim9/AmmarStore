class ProductModel {
  int? id;
  String? name;
  double? price;
  String? image;
  bool? isFavorite;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.image,
    this.isFavorite,
  });
}

final productList = <ProductModel> [
  ProductModel(
    id: 1,
    name: 'Mac',
    price: 1199,
    image:
    'https://1734811051.rsc.cdn77.org/data/images/full/384548/apple-macbook-pro-m1.jpg',
    isFavorite: false,
  ),
  ProductModel(
    id: 2,
    name: 'iPhone',
    price: 999,
    image:
    'https://m.media-amazon.com/images/I/61-r9zOKBCL._SL1500_.jpg',
    isFavorite: false,
  ),
  ProductModel(
    id: 3,
    name: 'Smart Watch',
    price: 129.99,
    image:
    'http://cdn.shopify.com/s/files/1/0997/6284/products/Side04_grande.png?v=1655378358',
    isFavorite: false,
  ),
  ProductModel(
    id: 4,
    name: 'Lenovo laptop',
    price: 896.40,
    image:
    'https://trademark-eg.com/wp-content/uploads/2021/12/Lenovo-IdeaPad-Gaming-3-11th-Gen-Intel-Core-i7.jpg',
    isFavorite: false,
  ),
  ProductModel(
    id: 5,
    name: 'airpods',
    price: 399.99,
    image:
    'https://www.tradeinn.com/f/13737/137370580/apple-airpods-pro-wireless-headphones.jpg',
    isFavorite: false,
  ),
  ProductModel(
    id: 6,
    name: 'Headset',
    price: 255,
    image:
    'https://www.streamplify.com/wp-content/uploads/2021/11/MIC-ARM-Responsive-BG2.jpg',
    isFavorite: false,
  ),
];


