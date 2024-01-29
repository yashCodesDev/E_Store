import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_store/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:e_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar: EAppbar(
        title: Text(
          'Reviews & Ratings',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),

      /// -- Body

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ratings and reviews are verified and from people who use the same type of device that you use.',
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              /// Overall Product Ratings
              const EOverallProductRating(),
              const ERatingBarIndicator(
                rating: 4.8,
              ),
              Text(
                '12,612',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
