import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/features/shop/controllers/home_controller.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EPromoSlider extends StatelessWidget {
  const EPromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners.map((url) => ERoundedImage(imageUrl: url)).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            )),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  ECircularContainer(
                    width: 25,
                    height: 2,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? EColors.primary
                        : EColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
