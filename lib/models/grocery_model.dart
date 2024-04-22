import 'package:shop_app/models/category_model.dart';

class GroceryModel {
  final String id;
  final String name;
  final String quantity;
  final CategoryModel categoryItem;

  GroceryModel({
    required this.id,
    required this.name,
    required this.quantity,
    required this.categoryItem,
  });
}
