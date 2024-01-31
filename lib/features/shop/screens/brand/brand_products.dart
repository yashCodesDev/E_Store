import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/brands/e_brand_card.dart';
import 'package:e_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBrandProducts extends StatelessWidget {
  const EBrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppbar(
        title: Text(
          'Adidas',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              ///Brand Detail
              EBrandCard(showBorder: true),
              SizedBox(height: ESizes.spaceBtwSections),
              ESortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
