import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_utils/provider/font_size_provider.dart';
import 'package:widget_utils/provider/password_provider.dart';
import 'package:widget_utils/provider/theme_provider.dart';
import 'package:widget_utils/provider/todo_provider.dart';
import 'package:widget_utils/ui/screens/dashboard.dart';

void main() {
  ErrorWidget.builder = (detail) => MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(child: Text(detail.exception.toString())),
      ));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => FontType()),
        ChangeNotifierProvider(create: (_) => PasswordStrengthProvider()),
        ChangeNotifierProvider(create: (_) => TodoProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
        builder: (BuildContext context, themeProvider, widget) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter CheatSheet 2023',
        theme: themeProvider.themeData,
        home: const DashboardPage(),
      );
    });
  }
}
