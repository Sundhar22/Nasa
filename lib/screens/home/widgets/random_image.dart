// ignore_for_file: non_constant_identifier_names

import 'dart:math';

var random = Random();

return_image(var category) {
  if (category == "Agriculture") {
    return "assets/images/agricultre${random.nextInt(3) + 1}.jpg";
  } else if (category == "Disasters") {
    return "assets/images/disaster${random.nextInt(3) + 1}.jpg";
  } else if (category == "Climate") {
    return "assets/images/climate${random.nextInt(4) + 1}.jpg";
  } else if (category == 'Capacity Building') {
    return "assets/images/capacity_building${random.nextInt(2) + 1}.jpg";
  } else if (category == 'Eco Forecasting') {
    return "assets/images/eco_forecasting${random.nextInt(2) + 1}.jpg";
  } else if (category == 'Health & Air Quality') {
    return "assets/images/air_quality${random.nextInt(3) + 1}.jpg";
  } else if (category == 'Water Resources') {
    return "assets/images/sea${random.nextInt(3) + 1}.jpg";
  } else {
    return "assets/images/air_quality${random.nextInt(3) + 1}.jpg";
  }
}
