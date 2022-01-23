import 'package:realestate/models/houses.dart';

class Category {
  Map<String, List<Houses>> menu;
  Category(this.menu);

  // function to generate menus
  static Category generateCategory() {
    return Category({
      'Meet up': Houses.meetUp(),
      'Rental': Houses.rental(),
      'Luxery': Houses.luxury(),
      'Resort': Houses.resort(),
    });
  }
}
