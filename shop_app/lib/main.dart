import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart_provider.dart';
import 'package:shop_app/global_variables.dart';
import 'package:shop_app/pages/home_page.dart';
import 'package:shop_app/pages/product_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Shoping App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.adamina().fontFamily,
          inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(
                  fontFamily: GoogleFonts.adamina().fontFamily,
                  fontSize: 16,
                  color: const Color.fromRGBO(119, 119, 119, 1),
                  fontWeight: FontWeight.w500),
              prefixIconColor: const Color.fromRGBO(119, 119, 119, 1)),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254, 206, 1, 1),
            primary: const Color.fromRGBO(254, 206, 1, 1),
          ),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
            fontSize: 20,
          )),
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
