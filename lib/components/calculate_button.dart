// import 'package:bmi_calc/config/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class CalculateButton extends StatelessWidget {
  final IconData icon;
  final String buttonName;
  final VoidCallback onPress;

  const CalculateButton({
    super.key,
    required this.buttonName,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    // Get the BMIController instance using GetX
    // BMIController bmiController = Get.put(BMIController());

    return Expanded(
      // Button that shows male and female option
      child: InkWell(
        onTap: onPress,
        child: Container(
            padding: const EdgeInsets.all(10),
            height: 55,
            decoration: BoxDecoration(
              color:Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                  size: 32,
                ),
                const SizedBox(
                  width: 10,
                ),
                // BUTTON Name Style is here
                Text(
                  buttonName,
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ],
            ),
      ),
    ));
  }
}
