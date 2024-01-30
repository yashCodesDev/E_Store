import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_store/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_store/common/widgets/success_screen/success_screen.dart';
import 'package:e_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_store/navigation_menu.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: EAppbar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in Cart
              const ECartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Coupon TextField
              const ECouponCode(),

              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              /// --Biling Section
              ERoundedContainer(
                padding: const EdgeInsets.all(ESizes.md),
                showBorder: true,
                backgroundColor: dark ? EColors.black : EColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    EBillingAmountSection(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    /// Divider
                    Divider(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    /// Payment Methods
                    EBillingPaymentSection(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    /// Address
                    EBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SuccessScreen(
                      image: EImages.successfulPaymentIcon,
                      title: 'Payment Success',
                      subtitle: 'Your item will be shipped soon!',
                      onPressed: () =>
                          Get.offAll(() => const NavigationMenu())),
                ),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
