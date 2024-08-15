import 'package:bmi_calc/config/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChangeButton extends StatelessWidget {
  const ThemeChangeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      // height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 5,
            ),

            // Light Theme button

            IconButton(
                onPressed: () {
                  themeController.changeTheme();
                },
                icon: themeController.isDark.value?  Icon(
                  Icons.light_mode,color: Theme.of(context).colorScheme.onSecondaryContainer,
                ) : Icon(
                  Icons.light_mode,color: Theme.of(context).colorScheme.primary,
                )
                ),
            // Dark theme button

             IconButton(
                onPressed: () {
                  themeController.changeTheme();
                },
                icon: themeController.isDark.value?  Icon(
                  Icons.dark_mode,color: Theme.of(context).colorScheme.primary,
                ) : Icon(
                  Icons.dark_mode,color: Theme.of(context).colorScheme.onPrimaryContainer,
                )
                ),
          ],
        ),
      ),
    );
  }
}
