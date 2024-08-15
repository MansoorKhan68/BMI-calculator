import 'package:bmi_calc/components/secondary_button.dart';
import 'package:bmi_calc/config/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the BMIController instance using GetX
    BMIController _bmiController = Get.put(BMIController());

    return Expanded(
      child: Container(
        height: double.infinity,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Age (Y)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Use Obx to make the Text widget reactive to age changes
                  Obx(() {
              
                    // THE FIELD HAS VALUE FOR AGE
                    return Text(
                      _bmiController.Age.value.toString(),
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    );
                  }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ICON ADD BUTTON IN AGE SELECTOR CONTAINER
                  SecondaryButton(
                    icon: Icons.add,
                    onPress: () {
                      _bmiController.Age++; // Increment age by 1
                    },
                  ),
                  // ICON MINUS BUTTON IN AGE SELECTOR CONTAINER
                  SecondaryButton(
                    icon: Icons.remove,
                    onPress: () {
                      _bmiController.Age--; // Decrement age by 1
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
