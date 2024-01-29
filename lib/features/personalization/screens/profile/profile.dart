import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/images/e_circular_image.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_store/features/personalization/screens/settings/settings.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppbar(
        showBackArrow: true,
        title:
            Text('Profile', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              ///--Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const ECircularImage(
                      padding: 0,
                      image: EImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              ///-- Details
              const SizedBox(
                height: ESizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(height: ESizes.spaceBtwItems),
              const ESectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              EProfileMenu(
                title: 'Name',
                value: 'Yash Sharmna',
                onPressed: () {},
              ),
              EProfileMenu(
                  onPressed: () {}, title: 'Username', value: 'yashSharma'),

              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(height: ESizes.spaceBtwItems),

              ///-- Heading Personal Info
              EProfileMenu(onPressed: () {}, title: 'User ID', value: '45689'),
              EProfileMenu(
                  onPressed: () {},
                  title: 'E-mail',
                  value: 'yash13767@gmail.com'),
              EProfileMenu(
                  onPressed: () {},
                  title: 'Phone Number',
                  value: '+917703841050'),
              EProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              EProfileMenu(
                  onPressed: () {},
                  title: 'Date of Birth',
                  value: '27 Nov 2000'),

              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              GestureDetector(
                onTap: () => Get.back(),
                child: const Center(
                  child: Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
