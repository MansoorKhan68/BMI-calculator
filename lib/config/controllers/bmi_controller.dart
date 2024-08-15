import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class BMIController extends GetxController {
  RxString Gender = "MALE".obs;
  RxInt Weight = 12.obs;
  RxInt Age = 12.obs;
  RxDouble Height = 0.0.obs;
  RxDouble tempBMI = 0.0.obs;
  RxString BMI = "".obs;
  RxString BMIStatus = "".obs;
  

// Handle GENDER function
  void genderHandle(String gender) {
    Gender.value = gender;
  }
  // Handle weight function
  // void weightHandle(int weight){
  //   Weight.value += weight;
  // }
  // Handle Age function
  // void ageHandle(int age){
  //   Age.value += age;

  // }

  void calculateBMI() {
    var hMeter = Height / 100;
    tempBMI.value = Weight / (hMeter * hMeter);
    BMI.value = tempBMI.toStringAsFixed(1);
    tempBMI.value = double.parse(BMI.value);
    findStatus();

  }

  void findStatus(){
    if(tempBMI.value < 18.5){
      BMIStatus.value = "Underweight";
    }
    if(tempBMI.value >18.5 && tempBMI.value < 24.5){
      BMIStatus.value = "Normal";
    }
     if(tempBMI.value >25.0 && tempBMI.value < 29.9){
      BMIStatus.value = "Overweight";
    }
     if(tempBMI.value >30.0 && tempBMI.value < 34.9){
      BMIStatus.value = "OBESE";
    }
     if(tempBMI.value >35.0){
      BMIStatus.value = "Extremly OBESE";
    }

  }
}
