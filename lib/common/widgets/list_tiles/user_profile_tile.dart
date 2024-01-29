import 'package:e_store/common/widgets/images/e_circular_image.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EUserProfileTile extends StatelessWidget {
  const EUserProfileTile({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ECircularImage(
        image: EImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Yash Sharma',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: EColors.white),
      ),
      subtitle: Text('yash13767@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: EColors.white)),
      trailing: IconButton(
          onPressed: onTap,
          icon: const Icon(
            Iconsax.edit,
            color: EColors.white,
          )),
    );
  }
}
