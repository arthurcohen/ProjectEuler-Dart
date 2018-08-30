void main() {
  List<int> naturalNumbers = [];
  
  for (var natural = 1; natural < 1000; natural++){
    if ((natural % 3) == 0 || (natural % 5) == 0){
      naturalNumbers.add(natural);
    }
  }
  
  var sumOfNaturalNumbers = 0;
  
  naturalNumbers.forEach((natural) => sumOfNaturalNumbers += natural);
  
  print(sumOfNaturalNumbers);
}
