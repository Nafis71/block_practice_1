class CounterUseCase{
  int incrementCounter(int counterValue) => counterValue + 1;
  int decrementCounter(int counterValue){
    if(counterValue == 0) return 0;
    return counterValue - 1;
  }
}
