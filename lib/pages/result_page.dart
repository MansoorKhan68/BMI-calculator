import 'package:bmi_calc/components/calculate_button.dart';
import 'package:bmi_calc/config/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Builder(builder: (context) {
            return Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                    ),
                    Text("Back")
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
            
                // JUST TEXT IS SHOW HERE
                Row(
                  children: [
                    Text("Your BMI is",
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),

                // PERCENTAGE CIRCULAR INDICATOR IS HERE
            
                Obx((){
                  return CircularPercentIndicator(
                  footer: Text(
                    "${bmiController.BMIStatus.value}",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  radius: 140.0,
                  lineWidth: 25.0,
                  percent: bmiController.tempBMI.value/100,
                  animation: true,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text(
                   "${bmiController.BMI.value}%",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  progressColor: Theme.of(context).colorScheme.primary,
                  backgroundColor:
                      Theme.of(context).colorScheme.primary.withOpacity(.2),
                );
                }),
                const SizedBox(
                  height: 20,
                ),
                // TEXT CONTAINER THAT SHOW THE RESULT TEXT
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                        "Your BMI is 20.7, indicating that your weight falls within the normal category for adults of your height, which is associated with a lower risk of developing health issues related to weight. To sustain this healthy weight, it's important to continue a balanced diet and regular physical activity."),
                  ),
                ),
                // sized box for for free spacing
                const SizedBox(height: 20,),
                 Expanded(
                   child: Row(
                     children: [
                       CalculateButton(
                                          
                           buttonName: "Find Out More",
                           icon: Icons.arrow_back_ios_new,
                           onPress: () {
                             Get.back();
                           }),
                     ],
                   ),
                 )
              ],
            );
          }),
        ),
      ),
    );
  }
}
