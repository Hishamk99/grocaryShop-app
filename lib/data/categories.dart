import 'package:flutter/material.dart';
import 'package:shop_app/models/category_model.dart';

enum Categories {
  vegetables,
  fruit,
  meat,
  dairy,
  carbs,
  sweets,
  spices,
  convenience,
  hygiene,
  other
}

Map<Categories, CategoryModel> categories = {
  Categories.vegetables: CategoryModel(
    title: 'Vegetables',
    color: const Color.fromARGB(255, 0, 255, 128),
  ),
  Categories.fruit: CategoryModel(
    title: 'Fruit',
    color: const Color.fromARGB(255, 145, 255, 0),
  ),
  Categories.meat: CategoryModel(
    title: 'Meat',
    color: const Color.fromARGB(255, 255, 102, 0),
  ),
  Categories.dairy: CategoryModel(
    title: 'Dairy',
    color: const Color.fromARGB(255, 0, 208, 255),
  ),
  Categories.carbs: CategoryModel(
    title: 'Carbs',
    color: const Color.fromARGB(255, 0, 60, 255),
  ),
  Categories.sweets: CategoryModel(
    title: 'Sweets',
    color: const Color.fromARGB(255, 255, 149, 0),
  ),
  Categories.spices: CategoryModel(
    title: 'Spices',
    color: const Color.fromARGB(255, 255, 187, 0),
  ),
  Categories.convenience: CategoryModel(
    title: 'Convenience',
    color: const Color.fromARGB(255, 191, 0, 255),
  ),
  Categories.hygiene: CategoryModel(
    title: 'Hygiene',
    color: const Color.fromARGB(255, 149, 0, 255),
  ),
  Categories.other: CategoryModel(
    title: 'Other',
    color: const Color.fromARGB(255, 0, 225, 255),
  ),
};
