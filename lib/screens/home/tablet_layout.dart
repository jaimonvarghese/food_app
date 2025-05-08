import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/carsouel_widget.dart';
import 'package:food_app/shared/widgets/cuisine_suggestions_section.dart';
import 'package:food_app/shared/widgets/custom_bottom_navigation_bar.dart';
import 'package:food_app/shared/widgets/featured_hive_box_widget.dart';
import 'package:food_app/shared/widgets/food_playlist_widget.dart';
import 'package:food_app/shared/widgets/foods_list_widget.dart';
import 'package:food_app/shared/widgets/hivevers_widget.dart';
import 'package:food_app/shared/widgets/learderboard_widget.dart';
import 'package:food_app/shared/widgets/main_text.dart';
import 'package:food_app/shared/widgets/promo_banner_widget.dart';
import 'package:food_app/shared/widgets/search_filter_row.dart';
import 'package:food_app/shared/widgets/trending_dishes_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PromoBannerWidget(height: 400),
            LeaderboardWidget(
              containerHeight: 260,
              textsize: 32,
              lcontainerHeight: 100,
              lcontianerWidth: 100,
              svgHeight: 60,
              svgWidth: 60,
              ltxtsize: 24,
            ),
            SearchFilterRow(),
            TrendingDishesList(
              tcontainerHeight: 400,
              timageHeight: 250,
              timageWidth: 250,
              ttxtsize: 24,
              containerHpadding: 20,
              containerVpadding: 5,
              tagtxtsize: 20,
              eyeIconSize: 32,
              viewsize: 20,
            ),
            CuisineSuggestionsSection(
              ctxtsize: 32,
              lineHeight: 120,
              lineWidth: 1200,
              typeTxtsize: 26,
              descTxtsize: 20,
              imageHeight: 100,
              imageWidth: 100,
            ),
            SizedBox(height: 15),
            FoodPlaylistWidget(
              containerHeight: 360,
              txtSize: 32,
              sizedboxHeight: 240,
              imageHeight: 220,
              imageWidth: 240,
            ),
            MainText(
              text1: "Our \nFeatured ",
              text2: "Hives",
              lineHeight: 240,
              lineWidth: 1200,
              textSize: 80,
              text1Color: Colors.black,
              text2Color: Color(0xFFF2B624),
            ),
            FeatueredHiveBoxWidget(
              containerHeight: 1000,
              fcontainerHeight: 450,
              fsizedboxHeight: 250,
              imageHeight: 140,
              imageWidth: 140,
              pricesize: 24,
              bigImageHeight: 260,
              bigImageWidth: 260,
              dotHeight: 20,
              dotWidth: 20,
              dotColor1: Colors.red,
              dotColor2: Colors.green,
              loctionTxtSize: 28,
              restaurantTxtSize: 36,
              drictionContainerHeight: 80,
              drictionContainerWidth: 80,
              drictionImageHeight: 40,
              drictionImageWidth: 40,
              viewAllHeight: 80,
              viewAllWidth: 300,
              viewAllTxtSize: 28,
            ),
            HiveverseWidget(
              titleTxtSize: 32,
              sizedboxHeight: 360,
              imageHeight: 280,
              imageWidth: 240,
              txtSize: 28,
            ),
            CarsouelWidget(
              containerHeight: 800,
              imageHeight: 800,
              imageWidth: 450,
            ),
            MainText(
              text1: "Eat",
              text2: " & \nRepeat",
              lineHeight: 300,
              lineWidth: 1200,
              textSize: 80,
              text1Color: Color(0xFFF2B624),
              text2Color: Colors.black,
            ),
            FoodsListWidget(
              txtsize: 28,
              flContainerHeight: 80,
              flContainerWidth: 200,
              folConitainerHeight: 1150,
              folcContainerHeight: 260,
              imageHeight: 220,
              imageWidth: 220,
              titleSize: 36,
              iconSize: 16,
              categorySize: 24,
              oldPriceSize: 28,
              newPriceSize: 36,
              eatTxtSize: 24,
              eatIconSize: 28,
            ),
          ],
        ),
      ),
    );
  }
}
