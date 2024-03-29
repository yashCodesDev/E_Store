import 'package:e_store/common/layouts/e_grid_layout.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/all_products/all_products.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const EPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --- AppBar
                  EHomeAppBar(),

                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  /// --- SearchBar
                  Padding(
                    padding: EdgeInsets.all(ESizes.md),
                    child: ESearchContainer(
                      text: 'Search in store',
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  /// --- Categories
                  Padding(
                    padding: EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        ESectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                        SizedBox(
                          height: ESizes.spaceBtwItems,
                        ),
                        EHomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  )
                ],
              ),
            ),

            ///Body
            Padding(
                padding: const EdgeInsets.all(ESizes.defaultSpace),
                child: Column(
                  children: [
                    const EPromoSlider(
                      banners: [
                        EImages.banner1,
                        EImages.banner2,
                        EImages.banner3
                      ],
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwSections,
                    ),
                    ESectionHeading(
                      title: 'Popular Products',
                      showActionButton: true,
                      size: ESizes.spaceBtwItems * 5,
                      onPressed: () => Get.to(() => const AllProducts()),
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    EGridLayout(
                      itemCount: 6,
                      itemBuilder: (_, index) => const EProductCardVertical(),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
