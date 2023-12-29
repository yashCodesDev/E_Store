import 'package:e_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --- AppBar
                  EHomeAppBar(),

                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  /// --- SearchBar
                  ESearchContainer(
                    text: 'Search in store',
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
