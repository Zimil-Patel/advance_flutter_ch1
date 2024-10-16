import 'package:advance_flutter_ch1/chant%20app/provider/chant_count_provider.dart';
import 'package:advance_flutter_ch1/gallery%20auth/gallery_app.dart';
import 'package:advance_flutter_ch1/gallery%20auth/model/gallery_model.dart';
import 'package:advance_flutter_ch1/gallery%20auth/provider/auth_provider.dart';
import 'package:advance_flutter_ch1/provider%20using%20counter/provider/counter_provider.dart';
import 'package:advance_flutter_ch1/provider%20using%20counter/provider/theme_provider.dart';
import 'package:advance_flutter_ch1/todo%20app/provider/theme_provider.dart';
import 'package:advance_flutter_ch1/todo%20app/provider/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'chant app/provider/image_provider.dart';

// 1. SwitchThemeScreen()
// 2. CounterScreen()
// 3. ToDoApp()
// 4. ChantApp()
// 5. ContactUsApp()
// 6. GalleryApp()

late ChantCounterProvider provider;
late ToDoProvider toDoProvider;
late ToDoThemeProvider toDoThemeProvider;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  provider = ChantCounterProvider();
  await provider.getLocalInfo();
  toDoProvider = ToDoProvider();
  await toDoProvider.refreshToDoList();
  toDoThemeProvider = ToDoThemeProvider();
  await toDoThemeProvider.getTheme();
  GalleryModel.convertToList();

  runApp(const GlobalApp());
}

class GlobalApp extends StatelessWidget {
  const GlobalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => toDoThemeProvider,
        ),
        ChangeNotifierProvider(
          create: (context) => toDoProvider,
        ),
        ChangeNotifierProvider(
          create: (context) => provider,
        ),
        ChangeNotifierProvider(
          create: (context) => ChantImageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      builder: (context, child) => const GalleryApp(),
    );
  }
}
