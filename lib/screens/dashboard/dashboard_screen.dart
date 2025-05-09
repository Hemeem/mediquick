import 'package:flutter/material.dart';
import 'package:mediquick/widget/dashboard/article_section.dart';
import 'package:mediquick/widget/dashboard/category_section.dart';
import 'package:mediquick/widget/dashboard/greeting_section.dart';
import 'package:mediquick/widget/dashboard/image_carousel.dart';
import 'package:mediquick/widget/dashboard/mitra_section.dart';
import 'package:mediquick/widget/dashboard/search_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EDED),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: const [
              SizedBox(height: 40),
              GreetingSection(),
              SizedBox(height: 30),
              SearchBarWidget(),
              SizedBox(height: 30),
              ImageCarousel(),
              SizedBox(height: 24),
              CategorySection(),
              SizedBox(height: 24),
              ArticleSection(),
              SizedBox(height: 10),
              MitraSection(),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
