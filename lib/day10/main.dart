import 'package:ectd/day10/pages/home.dart';
import 'package:flutter/material.dart';
import '../day10/EASY_POS_R5/sql_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var sql = SqlHelper();
  await sql.init(); // -> this solves a problem discussed in session 11
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gilroy',
      ),
      // routes: {//navigation by name
      //   '/': (context) => Home(),
      //   '/vpizza': (context) => VPizzaPage(),
      //   '/cpizza': (context) => CPizzaPage(),
      //   '/fries': (context) => FriesPage(),
      // },
      home: HomePage(),
    );
  }
}
