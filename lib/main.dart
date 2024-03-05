import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_dark_light/home.dart';
import 'package:state_management_dark_light/provider/theme_provider.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) {
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          theme: provider.theme,
          home: home(),
        );
      },
    );
  }
}
