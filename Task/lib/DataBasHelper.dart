import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

/*
  sqflit
  Local Data base 

*/

class dataBaseHelper {
  // database name
  static const dataBaseName = "Dbname";
  // verson
  static const version = 1;
  // table name
  static const tableName = "RadomData";

  Database? _database;
  // it will return object of DataBase
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await _initDatabase();
  }


Future<Database?> _initDatabase() async {
  // it will allow to work with application [system file] or i say directory where the application may place data that is user-generated
  var dic = await getApplicationDocumentsDirectory();
  // Path of Data base
  var path = dic.path + dataBaseName;
  // Open/create the database at a given path 
  var newdatabase = openDatabase(
    path,
    version: version,
    onCreate: (db, version) {
      // Sql Query to creat Table
      db.execute(
      """
      CREAT TABLE $tableName(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
      )
      """);
    },
  ); // execute will execute to query
  return newdatabase;
}

Future<int?> Insert(Map<String,dynamic> e) async{
  var DB = await this.database;
  // isert data
  var res = await DB?.insert(tableName, e);
  return res;
  // it will  return 0 if fail
}

Future<List<Map<String, Object?>>> Select() async{
  var res;
  var DB = await this.database;
  return  res = await DB!.query(tableName);
  // it will  return 0 if fail
}

}