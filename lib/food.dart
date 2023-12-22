class Food {
  final String thFood;
  final String enFood;
  final double price;
  final String value;

  Food(
      {required this.thFood,
      required this.enFood,
      required this.price,
      required this.value});

  static List<Food> getFood() {
    return [
      Food(
          thFood: "ยำมาม่า", enFood: "yam-ma-ma", price: 150, value: "ยำมาม่า"),
      Food(
          thFood: "ยำมะม่วง",
          enFood: "yam-ma-muang",
          price: 250,
          value: "ยำมะม่วง"),
      Food(
        thFood: "ข้าวยำ",
        enFood: "kaowyam",
        price: 150,
        value: "ข้าวยำ",
      ),
      Food(
        thFood: "ข้าวคั่ว",
        enFood: "kaowkua",
        price: 160,
        value: "ข้าวคั่ว",
      ),
    ];
  }
}
