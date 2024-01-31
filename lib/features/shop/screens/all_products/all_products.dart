import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppbar(
        title: Text(
          'Popular Products',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: ESortableProducts(),
        ),
      ),
    );
  }
}
