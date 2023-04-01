class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightlight;

  Food({
    required this.imgUrl,
    required this.desc,
    required this.name,
    required this.waitTime,
    required this.score,
    required this.cal,
    required this.price,
    required this.quantity,
    required this.ingredients,
    required this.about,
    this.hightlight = false,
  });

  static List<Food> generateRecomendationdFoods() {
    return [
      Food(
        imgUrl: 'assets/images/dish1.png',
        desc: 'No 1. in Sales',
        name: 'Soba Soup',
        waitTime: '50 min',
        score: 4.8,
        cal: '325 kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        about:
            'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodles and a  selection od meats od vegetables, often topped with a bloiled egg.',
        hightlight: true,
      ),
      Food(
        imgUrl: 'assets/images/dish2.png',
        desc: 'Low Fat',
        name: 'Sai Ua Samun Phrai',
        waitTime: '30 min',
        score: 4.7,
        cal: '255 kcal',
        price: 18,
        quantity: 1,
        ingredients: [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Scallion': 'assets/images/ingre4.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Scallion': 'assets/images/ingre4.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
        ],
        about: 'Simply put, ramen is a Japanese noodle soup, with',
      ),
      Food(
        imgUrl: 'assets/images/dish3.png',
        desc: 'Highly Recommended',
        name: 'Ratatoulle pasta',
        waitTime: '20 min',
        score: 4.5,
        cal: '125 kcal',
        price: 17,
        quantity: 1,
        ingredients: [
          {'Scallion': 'assets/images/ingre4.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Noodle': 'assets/images/ingre1.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        about: 'Simply put, ramen is a Japanese noodle soup, with',
      ),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        imgUrl: 'assets/images/dish4.png',
        desc: 'Most Popular',
        name: 'Tomato Chicken',
        waitTime: '50 min',
        score: 4.8,
        cal: '325 kcal',
        price: 14,
        quantity: 1,
        ingredients: [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        about: 'Simply put, ramen is a Japanese noodle soup, with',
        hightlight: true,
      ),
      Food(
        imgUrl: 'assets/images/dish1.png',
        desc: 'No 1. in Sales',
        name: 'Soba Soup',
        waitTime: '50 min',
        score: 4.8,
        cal: '325 kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        about: 'Simply put, ramen is a Japanese noodle soup, with',
        hightlight: true,
      ),
    ];
  }
}
