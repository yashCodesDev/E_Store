import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_store/features/shop/screens/checkout/checkout.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppbar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(
          ESizes.defaultSpace,
        ),

        /// -- Item in Cart

        child: ECartItems(),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen(),
                duration: const Duration(milliseconds: 0)),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
