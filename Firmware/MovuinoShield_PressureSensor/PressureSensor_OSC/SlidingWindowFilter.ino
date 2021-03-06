SlidingWindowFilter::SlidingWindowFilter(byte size, int seed)
{
  
  shiftOffset = constrain(size, 1, 8);
  
  filterWindowSize = 1;
  for(int i = size; i > 0; i--) // compute number of samples in sliding window
  {
    filterWindowSize = filterWindowSize << 1;
  }
  
  DataList = (int*) calloc (filterWindowSize, sizeof(int));   // array for data
  
  OldestDataPoint = 0;              // oldest data point location 
  
  dataSum = 0;
  
  for(byte i=0; i<filterWindowSize; i++) // initialize the data array
  {
    DataList[i] = seed;     // populate with seed value
    dataSum += seed;
  }
  
  currentResult = seed;
  
}

int SlidingWindowFilter::in(int value) // on 16Mhz Arduino: 8us
{  
  
  dataSum -= DataList[OldestDataPoint]; // subtract oldest data from the total
  
  dataSum += value; // add the new data to the total
  
  DataList[OldestDataPoint] = value; // replace oldest data in list
  
  currentResult = int(dataSum >> shiftOffset);  // divide total by the number of samples
  
  OldestDataPoint++;  // increment and wrap pointer
  if(OldestDataPoint == filterWindowSize)  OldestDataPoint = 0;
  
  return currentResult;
}


int SlidingWindowFilter::out() // return the value of the median data sample
{
  return currentResult;   
}
