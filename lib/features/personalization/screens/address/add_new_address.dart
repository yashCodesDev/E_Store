import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const EAppbar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Name',
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    floatingLabelStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(
                  height: ESizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.mobile),
                      labelText: 'Phone Number',
                      floatingLabelStyle:
                          Theme.of(context).textTheme.bodyMedium,
                      labelStyle: Theme.of(context).textTheme.bodyMedium),
                ),
                const SizedBox(
                  height: ESizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Iconsax.building_3),
                            labelText: 'Street',
                            floatingLabelStyle:
                                Theme.of(context).textTheme.bodyMedium,
                            labelStyle: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ),
                    const SizedBox(width: ESizes.sm),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Iconsax.code),
                            labelText: 'Postal Code',
                            floatingLabelStyle:
                                Theme.of(context).textTheme.bodyMedium,
                            labelStyle: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: ESizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Iconsax.building),
                            labelText: 'City',
                            floatingLabelStyle:
                                Theme.of(context).textTheme.bodyMedium,
                            labelStyle: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ),
                    const SizedBox(width: ESizes.sm),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Iconsax.activity),
                            labelText: 'State',
                            floatingLabelStyle:
                                Theme.of(context).textTheme.bodyMedium,
                            labelStyle: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: ESizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.global),
                      labelText: 'Country',
                      floatingLabelStyle:
                          Theme.of(context).textTheme.bodyMedium,
                      labelStyle: Theme.of(context).textTheme.bodyMedium),
                ),
                const SizedBox(
                  height: ESizes.defaultSpace,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Save')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
