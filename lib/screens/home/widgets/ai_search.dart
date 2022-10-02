// ignore: non_constant_identifier_names
return_intrest(var sentence) {
  int length = sentence.length;
  for (int i = 0; i < sentence.length; i++) {
    for (int j = i + 1; j < length + 1; j++) {
      var query = sentence.substring(i, j);
      if (query == "All" || query == "All") {
        return "All";
      } else if (query == "agri" || query == "Agri") {
        return "Agriculture";
      } else if (query == "cap build" || query == "Cap Build") {
        return "Capacity Building";
      } else if (query == "cli" || query == "Cli") {
        return "Climate";
      } else if (query == "dis" || query == "Dis") {
        return "Disasters";
      } else if (query == "eco fore" || query == "Eco Fore") {
        return "Eco Forecasting";
      } else if (query == "health & Air Quality" ||
          query == "Health & Air Quality") {
        return "Health & Air Quality";
      } else if (query == "disaster" || query == "Disaster") {
        return "Disaster";
      } else if (query == "water " || query == "Water Resources") {
        return "Water Resources";
      }
    }
    return "allData";
  }
}
