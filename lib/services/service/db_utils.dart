import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/puan.dart';

class DbUtils {

  static final DbUtils _dbUtils = DbUtils._internal();

  DbUtils._internal();

  factory DbUtils() {
    return _dbUtils;
  }

  static Database? _db;

  Future<Database?> get db async {
    _db ??= await initializeDb();
    return _db;
  }

  Future<Database> initializeDb() async {
    String path = join(await getDatabasesPath(), 'puangie_database.db');
    var dbPuans = await openDatabase(path, version: 1, onCreate: _createDb);
    return dbPuans;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        "CREATE TABLE puans(id INTEGER PRIMARY KEY, name TEXT)");
  }

  Future<void> deleteTable() async {
    final Database? db = await this.db;
    db?.delete('puans');
  }

  Future<void> insertpuan(puan puan) async {
    final Database? db = await this.db;
    await db?.insert(
      'puans',
      puan.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<puan>> puans() async {
    final Database? db = await this.db;
    final List<Map<String, Object?>>? maps = await db?.query('puans');

    return List.generate(maps!.length, (i) {
      return puan(
        id: int.parse(maps[i]['id'].toString()),
        name: maps[i]['name'].toString(),
      );
    });
  }

  Future<void> updatepuan(puan puan) async {
    final db = await this.db;
    await db?.update(
      'puans',
      puan.toMap(),
      where: "id = ?",
      whereArgs: [puan.id],
    );
  }

  Future<void> deletepuan(int id) async {
    final db = await this.db;
    await db?.delete(
      'puans',
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
