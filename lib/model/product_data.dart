class Product {
  final String name;
  final double price;
  final String image;
  final List<String> imgIngredient;
  final List<String> nameIngredient;

  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.imgIngredient,
    required this.nameIngredient,
  });

  static List<Product> products = [
    Product(
        name: 'Giò',
        price: 250,
        image:
            'https://www.disneycooking.com/wp-content/uploads/2021/04/cha-bo.jpg',
        imgIngredient: [
          'https://icdn.dantri.com.vn/FaA3gEccccccccccccos/Image/2011/06/tht6811_a9082.jpg',
          'https://cdn.tgdd.vn/Files/2019/09/25/1201751/mo-heo-va-dau-an-nen-dung-loai-nao-trong-nau-an-201909251628482187.jpg',
          'https://www.hoteljob.vn/files/Anh-HTJ-Hong/cac-loai-gia-vi-thao-moc-trong-mon-au-1.jpg'
        ],
        nameIngredient: [
          'Thịt bò',
          'Mỡ Heo',
          'Gia vị'
        ]),
    Product(
        name: 'Canh',
        price: 450,
        image:
            'https://www.disneycooking.com/wp-content/uploads/2021/03/canh-ghe-rau-muong.jpg',
        imgIngredient: [],
        nameIngredient: []),
    Product(
        name: 'Cá Lăng',
        price: 150,
        image:
            'https://www.disneycooking.com/wp-content/uploads/2020/08/ca-lang-nau-gi-ngon.jpg',
        imgIngredient: [],
        nameIngredient: []),
    Product(
        name: 'Thịt Nướng',
        price: 120,
        image:
            'https://www.disneycooking.com/wp-content/uploads/2020/05/uop-thit-bo-nuong.jpg',
        imgIngredient: [],
        nameIngredient: []),
    Product(
        name: 'Bò xào',
        price: 220,
        image:
            'https://www.disneycooking.com/wp-content/uploads/2020/08/nui-xao-bo.jpg',
        imgIngredient: [],
        nameIngredient: []),
    Product(
        name: 'Salad',
        price: 310,
        image:
            'https://www.disneycooking.com/wp-content/uploads/2020/03/salad-ca-ngu.jpg',
        imgIngredient: [],
        nameIngredient: []),
    Product(
        name: 'Dê núi',
        price: 550,
        image:
            'https://www.disneycooking.com/wp-content/uploads/2019/09/mon-ngon-tu-de.jpg',
        imgIngredient: [],
        nameIngredient: []),
  ];
}
