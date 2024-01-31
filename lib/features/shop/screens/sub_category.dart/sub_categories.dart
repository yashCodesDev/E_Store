import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppbar(
        title: Text(
          'Sports',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const ERoundedImage(
                imageUrl: EImages.promoBanner3,
                applyImageRadius: true,
                width: double.infinity,
                height: null,
              ),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// SUb-Categories
              ESectionHeading(
                title: 'Sports shoes',
                onPressed: () {},
              ),
              const SizedBox(height: ESizes.spaceBtwItems / 2),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: ESizes.spaceBtwItems),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      const EProductCardHorizontal(),
                ),
              ),

              const SizedBox(height: ESizes.spaceBtwSections),

              ESectionHeading(
                title: 'Sports shirts',
                onPressed: () {},
              ),
              const SizedBox(height: ESizes.spaceBtwItems / 2),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: ESizes.spaceBtwItems),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      const EProductCardHorizontal(),
                ),
              ),

              const SizedBox(height: ESizes.spaceBtwSections),

              ESectionHeading(
                title: 'Sports Equipments',
                onPressed: () {},
              ),
              const SizedBox(height: ESizes.spaceBtwItems / 2),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: ESizes.spaceBtwItems),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      const EProductCardHorizontal(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
