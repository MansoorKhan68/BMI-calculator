import 'package:bmi_calc/config/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {

    BMIController _bmiController = Get.put(BMIController());
    return Expanded(
      child: Container(
          width: double.infinity,
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
                    'Height (CM)',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onPrimaryContainer),
                  ),
                ],
              ),
              Expanded(
                child: Obx(() {
                  return SfSlider.vertical(
      min: 0,
      max: 240.0,
      value: _bmiController.Height.value,
      interval: 20,
      showTicks: true,
      showLabels: true,
      enableTooltip: true,
      minorTicksPerInterval: 2,
      onChanged: (dynamic value) {
        _bmiController.Height.value = value;
      }
                  );
                },))
              
            ],
          )),
    );
  }
}
