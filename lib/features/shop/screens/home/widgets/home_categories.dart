import 'package:e_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_store/features/shop/screens/sub_category.dart/sub_categories.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EHomeCategories extends StatelessWidget {
  const EHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return EVerticalImageText(
              image: EImages.shoeIcon,
              title: 'Shoes',
              onTap: () => Get.to(() => const SubCategoriesScreen()),
              textColor: EColors.white,
            );
          }),
    );
  }
}
