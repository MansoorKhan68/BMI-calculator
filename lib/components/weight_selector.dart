import 'package:bmi_calc/components/secondary_button.dart';
import 'package:bmi_calc/config/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightSelector extends StatelessWidget {
  const WeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    // Create or find an instance of BMIController using GetX
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
                  'Weight (KG)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
            Expanded(
              // THIS FIELD HAVE VALUE FOR WEIGHT
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() {
                    // Use Obx to make the Text widget reactive to weight changes
                    return Text(
                      _bmiController.Weight.value.toString(),
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
                  // ICON ADD BUTTON IN WEIGHT SELECTOR CONTAINER
                  SecondaryButton(
                    icon: Icons.add,
                    
                    onPress: () {
                      // Correctly call the weightHandle method on the _bmiController instance
                      _bmiController.Weight++;
                    },
                  ),
                  // ICON MINUS BUTTON IN WEIGHT SELECTOR CONTAINER
                  SecondaryButton(
                    icon: Icons.remove,
                    onPress: () {
                      _bmiController.Weight--;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
