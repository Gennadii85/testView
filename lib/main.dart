import 'package:dashboard/common/variables.dart';
import 'package:dashboard/pages/page_1.dart';
import 'package:dashboard/presentation/cubit/bottom_cubit/bottom_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Variables.themeColor,
        ),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => BottomCubit(),
        child: const Dashboard(),
      ),
    );
  }
}
