import 'package:flutter/material.dart';
import 'package:fluttershopping/pages/home/food_page_body.dart';
import 'package:fluttershopping/utils/colors.dart';
import 'package:fluttershopping/utils/dimensions.dart';
import 'package:fluttershopping/widgets/big_text.dart';
import 'package:fluttershopping/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        child: Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.width15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                        text: "Bangladesh",
                        color: AppColors.mainColor,
                        size: Dimensions.font20),
                    Row(
                      children: [
                        SmallText(
                          text: "Narsingdi",
                          color: Colors.black54,
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.width45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search,
                        color: Colors.white, size: Dimensions.iconSize24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor,
                    ),
                  ),
                )
              ],
            )),
      ),
      Expanded(child: SingleChildScrollView(child: FoodPageBody()))
    ]));
  }
}
