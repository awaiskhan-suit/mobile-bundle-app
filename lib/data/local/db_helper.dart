import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'Customer_Model.dart';

class DataBaseHelper {
  static final DataBaseHelper instance = DataBaseHelper._init();
  static Database? _database;

  DataBaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('customers.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE customers(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        email TEXT,
        password TEXT,
        phone_no TEXT
      )
    ''');
  }

  Future<int> insertCustomer(Customer customer) async {
    final db = await instance.database;
    return await db.insert('customers', customer.toMap());
  }

  Future<List<Customer>> getCustomers() async {
    final db = await instance.database;
    final result = await db.query('customers');
    return result.map((map) => Customer.fromMap(map)).toList();
  }
  Future<Map<String, dynamic>?> getuseremailandpassword(String email, String password) async {
    final db = await database; // your DB instance

    final result = await db.query(
      'customers', // table name
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (result.isNotEmpty) {
      return result.first; // first matching row
    } else {
      return null; // no match
    }
  }

}
