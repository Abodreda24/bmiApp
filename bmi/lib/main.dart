import 'package:bmi/cubit/bmicubt_cubit.dart';
import 'package:bmi/screns/homescrens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return BlocProvider(
            create: (context) => BmicubtCubit(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light(useMaterial3: true),
              home: Bmi(),
            ),
          );
        });
  }
}

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return Homescren();
  }
}
