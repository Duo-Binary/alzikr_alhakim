import 'package:flutter/material.dart';
import '../../../../core/utils/navigation.dart';
import '../../../home/presentation/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
@override
void initState() {
  super.initState();
  Future.delayed(Duration(seconds: 2), () { 
    if (mounted) {  
      Navigation.go(context, const HomeView());
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

 
}
