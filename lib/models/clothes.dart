class Clothes {
  String title;
  String subTitle;
  String price;
  String imgUrl;
  List<String> detailUrl;

  Clothes(
     this.title,
     this.subTitle,
     this.price,
     this.imgUrl,
     this.detailUrl
);

  static List<Clothes> generateClothes(){
    return [
      Clothes(
        "Gucci oversize",
        "Hoodie",
        "\$ 79.99",
        'assets/images/arrival1.png',
        ['assets/images/arrival1.png' , 'assets/images/detail2.png']
      ),

      Clothes(
          "Gucci oversize",
          "Hoodie",
          "\$ 79.99",
          'assets/images/arrival2.png',
          ['assets/images/arrival2.png' , 'assets/images/detail3.png']
      ),
      Clothes(
          "Gucci oversize",
          "Hoodie",
          "\$ 79.99",
          'assets/images/detail3.png',
          ['assets/images/arrival2.png' , 'assets/images/detail3.png']
      ),
      Clothes(
          "Gucci oversize",
          "Hoodie",
          "\$ 79.99",
          'assets/images/detail2.png',
          ['assets/images/arrival2.png' , 'assets/images/detail3.png']
      ),
    ];
  }

}