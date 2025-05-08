import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/carsouel_widget.dart';
import 'package:food_app/shared/widgets/cuisine_suggestions_section.dart';
import 'package:food_app/shared/widgets/featured_hive_box_widget.dart';
import 'package:food_app/shared/widgets/food_playlist_widget.dart';
import 'package:food_app/shared/widgets/foods_list_widget.dart';
import 'package:food_app/shared/widgets/hivevers_widget.dart';
import 'package:food_app/shared/widgets/learderboard_widget.dart';
import 'package:food_app/shared/widgets/main_text.dart';
import 'package:food_app/shared/widgets/promo_banner_widget.dart';
import 'package:food_app/shared/widgets/search_filter_row.dart';
import 'package:food_app/shared/widgets/trending_dishes_list.dart';
import 'package:food_app/shared/widgets/custom_bottom_navigation_bar.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PromoBannerWidget(height: 220),
            LeaderboardWidget(
              containerHeight: 160,
              textsize: 16,
              lcontainerHeight: 60,
              lcontianerWidth: 60,
              svgHeight: 30,
              svgWidth: 30,
              ltxtsize: 12,
            ),
            SearchFilterRow(),
            TrendingDishesList(
              tcontainerHeight: 160,
              timageHeight: 120,
              timageWidth: 120,
              ttxtsize: 12,
              containerHpadding: 8,
              containerVpadding: 4,
              tagtxtsize: 14,
              eyeIconSize: 16,
              viewsize: 12,
            ),
            CuisineSuggestionsSection(
              ctxtsize: 16,
              lineHeight: 60,
              lineWidth: 600,
              typeTxtsize: 13,
              descTxtsize: 10,
              imageHeight: 40,
              imageWidth: 40,
            ),
            SizedBox(height: 15),
            FoodPlaylistWidget(
              containerHeight: 180,
              txtSize: 16,
              sizedboxHeight: 120,
              imageHeight: 100,
              imageWidth: 110,
            ),
            MainText(
              text1: "Our \nFeatured ",
              text2: "Hives",
              lineHeight: 120,
              lineWidth: 600,
              textSize: 40,
              text1Color: Colors.black,
              text2Color: Color(0xFFF2B624),
            ),

            FeatueredHiveBoxWidget(
              containerHeight: 600,
              fcontainerHeight: 260,
              fsizedboxHeight: 120,
              imageHeight: 60,
              imageWidth: 60,
              pricesize: 12,
              bigImageHeight: 130,
              bigImageWidth: 130,
              dotHeight: 10,
              dotWidth: 10,
              dotColor1: Colors.red,
              dotColor2: Colors.green,
              loctionTxtSize: 14,
              restaurantTxtSize: 18,
              drictionContainerHeight: 50,
              drictionContainerWidth: 50,
              drictionImageHeight: 30,
              drictionImageWidth: 30,
              viewAllHeight: 50,
              viewAllWidth: 150,
              viewAllTxtSize: 14,
            ),
            HiveverseWidget(
              titleTxtSize: 16,
              sizedboxHeight: 180,
              imageHeight: 140,
              imageWidth: 120,
              txtSize: 14,
            ),
            CarsouelWidget(
              containerHeight: 500,
              imageHeight: 500,
              imageWidth: 250,
            ),
            MainText(
              text1: "Eat",
              text2: " & \nRepeat",
              lineHeight: 160,
              lineWidth: 600,
              textSize: 40,
              text1Color: Color(0xFFF2B624),
              text2Color: Colors.black,
            ),
            FoodsListWidget(
              txtsize: 14,
              flContainerHeight: 40,
              flContainerWidth: 100,
              folConitainerHeight: 550,
              folcContainerHeight: 130,
              imageHeight: 110,
              imageWidth: 110,
              titleSize: 18,
              iconSize: 8,
              categorySize: 12,
              oldPriceSize: 14,
              newPriceSize: 18,
              eatTxtSize: 14,
              eatIconSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
