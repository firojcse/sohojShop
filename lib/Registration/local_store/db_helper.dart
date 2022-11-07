import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
class RegiUserHelper{
    Database ?  registrationData;

  static String dbName='RegistrationUserData';
  static int versionCode=1;

  static String stdTable='UserRegistrationData';

  /// Std Row Header
  static String UserId='';
  static String UserName='';
  static String UserGender='';
  static String UserPhone='';
  static String UserGmail='';
  static String UserPassword='';
  static String UserConformPassword='';


  final String UserRegiQuery = '''CREATE TABLE
$stdTable(
$UserId INTEGER PRIMARY KEY ,
$UserName TEXT,
$UserGender TEXT ,
$UserPhone TEXT ,
$UserGmail TEXT ,
$UserPassword TEXT ,
$UserConformPassword TEXT ,
)''';



// DatabaseHelper._privateConstructor(){}
  RegiUserHelper._privateConstructor();
  static final RegiUserHelper instance = RegiUserHelper._privateConstructor();
  Future<Database> get database async {
    if (registrationData != null) return registrationData!;

    registrationData = await _initDatabase();
    return registrationData!;
  }


  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, dbName);
    print('local path >>' + path.toString());
    return await openDatabase(
      path,
      version: versionCode,
      onCreate: _onCreate,
    );
  }

  _onCreateDB(Database db, int version) async {

    await db.execute(UserRegiQuery);
  }


  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE Employee(id INTEGER PRIMARY KEY, firstname TEXT, lastname TEXT, mobileno TEXT,emailId TEXT )");
    print("Created tables");
  }

   /// CRUD

  Future<int> insertStd(Map <String,dynamic> values) async {
    print('values$values');
    Database db = await instance.database;
      int row= await db.insert("Employee",values);
    print('Row $row');
    return row;
  }



}

