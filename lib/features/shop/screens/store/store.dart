import 'package:e_store/common/layouts/e_grid_layout.dart';
import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/appbar/tabbar.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_store/common/widgets/brands/e_brand_card.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/brand/all_brands.dart';
import 'package:e_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: EAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: const [ECartCounterIcon()],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: EHelperFunctions.isDarkMode(context)
                      ? EColors.black
                      : EColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(ESizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: ESizes.spaceBtwItems,
                        ),

                        /// -- Search bar
                        const ESearchContainer(
                          text: 'Search in store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: ESizes.spaceBtwSections,
                        ),

                        /// --Featured Brands
                        ESectionHeading(
                          title: 'Featured Brands',
                          onPressed: () =>
                              Get.to(() => const AllBrandsScreen()),
                        ),
                        const SizedBox(height: ESizes.spaceBtwItems / 1.5),
                        EGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const EBrandCard(
                                showBorder: true,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: const ETabBar(tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics'))
                  ]),
                )
              ];
            },
            body: const TabBarView(children: [
              ECategoryTab(),
              ECategoryTab(),
              ECategoryTab(),
              ECategoryTab(),
              ECategoryTab()
            ])),
      ),
    );
  }
}
