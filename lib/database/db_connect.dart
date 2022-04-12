import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection{
  setDatabase() async{
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'mybusi');
    var database =
    await openDatabase(path, version: 1, onCreate: _onCreatingDatabase);
    return database;
  }

  _onCreatingDatabase(Database database, int version) async{
    //Create table category
    await database.execute(
        "create table category_tb(cat_id integer primary key, cat_name text)");

    //Create table bill
    await database.execute(
        "create table bill_tb(pay_id integer primary key, receipt_no text, pay_date text, pay_time text)");

    //Create table checkout
    await database.execute(
        "create table checkout_tb(dt_id integer primary key, pay_id integer, pd_id integer, pay_unit integer)");

    //Create table log
    await database.execute(
        "create table log_tb(log_id integer primary key, date text, time text, detail text)");

    //Create table store
    await database.execute(
        "create table store_tb(pd_id integer primary key, pd_barecode text, pd_name text, cat_id integer, pd_price integer, cost integer, pd_tax text, pd_unit text, pd_pic text, pd_remark text)");
  }
}