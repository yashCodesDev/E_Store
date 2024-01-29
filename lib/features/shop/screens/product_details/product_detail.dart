import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const EBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider

            const EProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: ESizes.defaultSpace,
                  left: ESizes.defaultSpace,
                  bottom: ESizes.defaultSpace),
              child: Column(
                children: [
                  ///- Rating & Share Button
                  const ERatingAndShare(),

                  ///--Price , Title , Stock, & Brand
                  const EProductMetaData(),

                  const SizedBox(height: ESizes.spaceBtwItems),

                  ///-- Attributes
                  const EProductAtrributes(),

                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  ///-- Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),

                  const SizedBox(height: ESizes.spaceBtwSections),

                  /// - Description
                  const ESectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),

                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am jus t practicing and nothing else. ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// - Reviews
                  const Divider(),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ESectionHeading(
                        title: 'Review(199)',
                        onPressed: () {},
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
