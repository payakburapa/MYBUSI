import 'package:mybusi/database/category/model_category.dart';
import 'package:sqflite/sqflite.dart';
import 'package:mybusi/database/db_connect.dart';

class Repository{
  DatabaseConnection databaseConnection;

  Repository(){
    // initailize database connection
    databaseConnection = DatabaseConnection();
  }

  static Database database;

  // Check if database is exist or not
  Future<Database> get createDatabase async{
    if(database != null) return database;
    database = await databaseConnection.setDatabase();
    return database;
  }

  //Inserting data to Table
  Future<int> insertData(table,data) async{
    var result = await database.insert(table, data);
    return result;
  }

  // Read data from Table
  Future<List> readData(table) async{
    var connection = await database;
    return await connection.query(table);
  }

  // Read data from table by Id
  Future<List> readDataById(table, itemId, field) async{
    return await database.query(table, where: '$field=?' , whereArgs: [itemId]);
  }

  // Update data
  Future<int> updateData(table, data, field) async {
    return await database.update(table, data, where: '$field=?' , whereArgs: [data['$field']]);
  }

  // Delete data from table
  Future<int> deleteData(table, itemId, field) async{
    return await database.delete(table, where: '$field = ?', whereArgs: [itemId]);
  }

  // Read data from table by Column Name
  // readDateByColumnName(table, columnName, columnValue) async {
  //   var connection = await database;
  //   return await connection.query(table, where: '$columnName=?', whereArgs: [columnValue]);
  // }
}