import 'package:mybusi/database/category/model_category.dart';
import 'package:mybusi/database/repository.dart';


class ServiceCategory{
  Repository repository;

  ServiceCategory(){
    repository = Repository();
  }

  //Create data
  saveCategory(ModelCategory category) async{
    return await repository.insertData('category_tb', category.categoryMap());
  }

  // Read data from table
  readCategories() async{
    return await repository.readData('category_tb');
  }

  // Read data from table by Id
  readCategoryById(categoryId) async {
    return await repository.readDataById('category_tb', categoryId, 'cat_id');
  }

  // Update data
  updateCategory(ModelCategory category) async{
    return await repository.updateData('category_tb', category.categoryMap(), 'cat_id');
  }

  // Delete data from table by Id
  deleteCategory(categoryId) async{
    return await repository.deleteData('category_tb', categoryId, 'cat_id');
  }
}