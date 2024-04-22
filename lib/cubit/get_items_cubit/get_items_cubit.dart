import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/cubit/get_items_cubit/get_items_state.dart';
import 'package:shop_app/data/categories.dart';
import 'package:shop_app/models/category_model.dart';
import 'package:shop_app/models/grocery_model.dart';
import 'package:shop_app/services/api.dart';

class GetItemsCubit extends Cubit<GetItemsState> {
  GetItemsCubit() : super(InitialState());
  List<GroceryModel> groceryList = [];
  getItems() async {
    emit(GetItemsLoading());
    try {
      final Map<String, dynamic> data = await Api().get(
          url:
              'https://grocary-shop-default-rtdb.firebaseio.com/shopping-list.json');
      for (var item in data.entries) {
        final CategoryModel category = categories.entries
            .firstWhere(
                (element) => element.value.title == item.value['category'])
            .value;
        groceryList.add(
          GroceryModel(
            id: item.key,
            name: item.value['name'],
            quantity: item.value['quantity'],
            categoryItem: category,
          ),
        );
      }
      if (groceryList.isEmpty) {
        emit(NoItemsState());
      } else {
        emit(
          GetItemsSuccess(groceryItems: groceryList),
        );
      }
    } catch (e) {
      emit(
        GetItemsFailure(errorMessage: e.toString()),
      );
    }
  }

  void addItem({required GroceryModel item}) {
    groceryList.add(item);
    emit(GetItemsSuccess(groceryItems: groceryList));
  }
}
