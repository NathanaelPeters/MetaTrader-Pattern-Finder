# MetaTrader-Pattern-Finder
An indicator made with the purpose of finding certain patterns that show up naturally in Forex charts

# Intro 
Forex (FX) is the marketplace where various national currencies are traded. This article gave me the inspiration to make this bot: https://www.babypips.com/learn/forex/double-top-and-double-bottom. It became clear to me that some patterns exist in charts that may imply a trend. So I sought to make a program that could find these patterns and alert me to where they were. 

# Overview
From my previous bot, I gained some experience with MQL5 and decided to keep using MQL5 for this project. 

So how could I find these patterns? To start made arrays with coordinates that I thought fit in with a double top shape. 

y  
|  
|  
|\____________________/\\\_\_\_\_\_/\\\_  
|\______________________________ x  

or:  
  
`[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0]`

It was then I realized that the shape was too specific. I had to create more arrays with different amount of space between the 'ears':  
<pre>
y           Array5                y            Array6              y           Array7               y             Array8  
|                                  |                                |                                |
|                                  |                                |                                |
|____________________/\_____/\_    |___________________/\______/\_  |__________________/\_______/\_  |_________________/\________/\_
|______________________________ x  |______________________________  |______________________________  |______________________________
</pre>
`[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0] ... `

i.e. I created the same array with a different number of 0s between the ears. Array5 has 5 zeroes between the 1s, Array6 has 6 zeroes between the 1s... etc. 

In order to access these arrays as efficiently as possible in MQL5 I made functions that created these arrays: 
  <pre>
  void ArraySpecify5 (double &Filter5[]){
  ArrayResize(Filter5, 30);
  ArrayFill(Filter5,0,30,0);
   Filter5[0] = 0; //
   Filter5[1] = 1; //
   Filter5[2] = 0; //
   Filter5[3] = 0; //
   Filter5[4] = 0; //
   Filter5[5] = 0; //
   Filter5[6] = 0; //
   Filter5[7] = 1; //
   Filter5[8] = 0; //
   Filter5[9] = 0; //
   Filter5[10] = 0; //
   Filter5[11] = 0; //
   Filter5[12] = 0; //
   Filter5[13] = 0; //
   Filter5[14] = 0; //
   Filter5[15] = 0; //
   Filter5[16] = 0; //
   Filter5[17] = 0; //
   Filter5[18] = 0; //
   Filter5[19] = 0; //
   Filter5[20] = 0; //
   Filter5[21] = 0; //
   Filter5[22] = 0; //
   Filter5[23] = 0; //
   Filter5[24] = 0; //
   Filter5[25] = 0; //
   Filter5[26] = 0; //
   Filter5[27] = 0; //
   Filter5[28] = 0; //
   Filter5[29] = 0; //
   </pre>  
     
However, manually writing these functions became time consuming even with copy+paste. So I made a python script that would not only create these MQL5 functions (FilterMaker.mq5), it would also make calculate the unit norm of the array. In order to compare both arrays, the array I created and an FX chart, I would need to find the unit normalized vector of both arrays. 

For the array I created the python file (FilterMaker.mq5) the code for calculating the unit norm is:
       
Then, to find the unit normalized vector:
   <pre>
    double sum = 0;
    Sum = 0
    for i in range(30):
      Sum += n[i]
    ss = 0.0
    for i in range(30):
      n[i] -= Sum/30.0
      ss += n[i]*n[i]
    norm = sqrt(ss)
    for i in range(30):
      n[i] = n[i]/norm
     </pre>
  For the array of the FX chart, it must be done in MQL5:
  Firstly, you must turn the open/close/high/low chart into an array:
  
          ArrayResize(Open, 30);
          ArrayFill(Open,0,30,0);
          double Open1 = CopyOpen(Symbol(), period, 1, 30, Open);
          
Where \'Open\' is an array with a length of 30  
and \'period\' is an input depending on which chart you want to look at (5 mins/10 mins/15 mins/30 mins/1 hour/4 hours... etc)  

Then to calculate the FX chart's unit norm:
   <pre>
   for(int i=0; i<ArraySize(Open); i++) {
      sum += Open[i];
   }
   double ssum = 0;
   for(int i=0; i<ArraySize(Open); i++) {
      Open[i] -= sum/ArraySize(Open);
      ssum += Open[i]*Open[i];
   }
   double norm = sqrt(ssum);
   for(int i=0; i<ArraySize(Open); i++) {
      Open[i] = Open[i]/norm;
   }
  </pre>
   
The FilterMaker's function that it outputs would now look like this, having been unit normalized: 
<pre>
    void ArraySpecify5 (double &Filter5[]){
    ArrayResize(Filter5, 30);
    ArrayFill(Filter5,0,30,0);
     Filter5[0] = -0.0488; //
     Filter5[1] = 0.6831; //
     Filter5[2] = -0.0488; //
     Filter5[3] = -0.0488; //
     Filter5[4] = -0.0488; //
     Filter5[5] = -0.0488; //
     Filter5[6] = -0.0488; //
     Filter5[7] = 0.6831; //
     Filter5[8] = -0.0488; //
     Filter5[9] = -0.0488; //
     Filter5[10] = -0.0488; //
     Filter5[11] = -0.0488; //
     Filter5[12] = -0.0488; //
     Filter5[13] = -0.0488; //
     Filter5[14] = -0.0488; //
     Filter5[15] = -0.0488; //
     Filter5[16] = -0.0488; //
     Filter5[17] = -0.0488; //
     Filter5[18] = -0.0488; //
     Filter5[19] = -0.0488; //
     Filter5[20] = -0.0488; //
     Filter5[21] = -0.0488; //
     Filter5[22] = -0.0488; //
     Filter5[23] = -0.0488; //
     Filter5[24] = -0.0488; //
     Filter5[25] = -0.0488; //
     Filter5[26] = -0.0488; //
     Filter5[27] = -0.0488; //
     Filter5[28] = -0.0488; //
     Filter5[29] = -0.0488; //
</pre>  

HELLO 
WHAT
THANKS


   
