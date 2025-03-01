import 'package:flutter_news/models/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category=[];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Business';
  categoryModel.image = 'images/business.jpeg';
  category.add(categoryModel);
  
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Entertainment';
  categoryModel.image = 'images/entertainment.jpg';
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'General';
  categoryModel.image = 'images/general.jpg';
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Health';
  categoryModel.image = 'images/health.jpg';
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Science';
  categoryModel.image = 'images/science.png';
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Sport';
  categoryModel.image = 'images/sport.jpeg';
  category.add(categoryModel);

  return category;
}