import 'package:e_store/common/layouts/e_grid_layout.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ESortableProducts extends StatelessWidget {
  const ESortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((option) =>
                    DropdownMenuItem(value: option, child: Text(option)))
                .toList(),
            onChanged: (value) {}),

        const SizedBox(height: ESizes.spaceBtwSections),

        ///Products
        EGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => const EProductCardVertical())
      ],
    );
  }
}
