void main() {
  List<int> evenFibonacci = [];
  
  for (var i in fibonacciYieldder(4000000)){
    if (i % 2 == 0) evenFibonacci.add(i);
  }
  
  var sumOfEvenFibonacci = 0;
  
  evenFibonacci.forEach((term) => sumOfEvenFibonacci += term);
  
  print(sumOfEvenFibonacci);
}

Iterable<int> fibonacciYieldder(int limit) sync* {
  var lastTerm = 0;
  var currentTerm = 1;
  
  while(currentTerm < limit){
    yield(currentTerm);
    var aux = currentTerm;
    currentTerm += lastTerm;
    lastTerm = aux;
  }
}