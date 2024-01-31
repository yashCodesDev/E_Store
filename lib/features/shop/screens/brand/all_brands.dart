import 'package:e_store/common/layouts/e_grid_layout.dart';
import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/brands/e_brand_card.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/brand/brand_products.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppbar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const ESectionHeading(title: 'Brands'),
              const SizedBox(height: ESizes.spaceBtwItems),

              /// -- Brands
              EGridLayout(
                  mainAxisExtent: 80,
                  itemCount: 10,
                  itemBuilder: (context, index) => ERoundedContainer(
                          child: EBrandCard(
                        showBorder: true,
                        onTap: () => Get.to(() => const EBrandProducts()),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
