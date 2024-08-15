import 'package:bmi_calc/components/age_selector.dart';
import 'package:bmi_calc/components/calculate_button.dart';
import 'package:bmi_calc/components/height_selector.dart';
import 'package:bmi_calc/components/primary_button.dart';
import 'package:bmi_calc/pages/result_page.dart';
import 'package:bmi_calc/components/theme_change_button.dart';
import 'package:bmi_calc/components/weight_selector.dart';
import 'package:bmi_calc/config/controllers/bmi_controller.dart';
import 'package:bmi_calc/config/controllers/theme_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ThemeController themeController = Get.put(ThemeController());
  // Get the BMIController instance using GetX
    BMIController bmiController = Get.put(BMIController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Theme Change Button
                  ThemeChangeButton(
                    
                    
                  ),
                ],
                // Welcome text shows here
              ),
              Row(
                children: [
                  Text(
                    'Welcome 😊',
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  )
                ],
              ),
              // BMI CALCULATOR  text here
              Row(
                children: [
                  Text(
                    'BMI CALCULATOR',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
               Row(
                children: [
                  // Button that shows male  option
                  PrimaryButton(
                    onPress: (){
                      bmiController.genderHandle("MALE");
                    },
                    icon: Icons.male, buttonName: 'MALE'),
                 const SizedBox(
                    width: 20,
                  ),
                  // Button that shows female  option
                  PrimaryButton(
                    onPress: (){
                      bmiController.genderHandle("FEMALE");
                    },
                    icon: Icons.female, buttonName: 'FEMALE'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // HEIGHT SELECTOR
                    HeightSelector(),
                    SizedBox( width: 20,),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // WEIGHT SELECTOR
                        WeightSelector(),
                         SizedBox(
                          height: 20,
                        ),
                        // AGE SELECTOR
                        AgeSelector()
                      ],
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              // CALCULATE BUTTON
             SizedBox(
              height: 55,
              child:  CalculateButton(
                icon: Icons.done,
                buttonName: "Let's Go",
                onPress: (){
                  bmiController.calculateBMI();
                  Get.to(() => ResultPage());
                },
              ))

            ],
          ),
        ),
      ),
    );
  }
}
