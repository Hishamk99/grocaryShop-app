import 'package:shop_app/models/grocery_model.dart';

class GetItemsState {}

class InitialState extends GetItemsState {}

class GetItemsSuccess extends GetItemsState {
  final List<GroceryModel> groceryItems;

  GetItemsSuccess({required this.groceryItems});
}

class NoItemsState extends GetItemsState {}

class GetItemsLoading extends GetItemsState {}

class GetItemsFailure extends GetItemsState {
  final String errorMessage;

  GetItemsFailure({required this.errorMessage});
}
