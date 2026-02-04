import 'package:advanced_flutter/features/home/widgets/Blue_Banner_container.dart';
import 'package:advanced_flutter/features/home/widgets/top_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            TopAppBar(),
            BlueBannerContainer(),
          ],
        ),
      )),
    );
  }
}