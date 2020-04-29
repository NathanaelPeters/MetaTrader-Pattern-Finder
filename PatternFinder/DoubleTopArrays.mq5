//+------------------------------------------------------------------+
//|                                              DoubleTopArrays.mq5 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
   

   int fnum=0;
   double FiltersDT[16][30];
   double Filter5[],Filter6[],Filter7[],Filter8[],Filter9[],Filter10[];
   double Filter11[],Filter12[],Filter13[],Filter14[],Filter15[],Filter16[];
   double Filter17[],Filter18[],Filter19[],Filter20[], Filter21[];
   double Filter0[]; 

void SpecifyArraysDT () {
   ArraySpecify5(Filter5);
   ArraySpecify6(Filter6);
   ArraySpecify7(Filter7);
   ArraySpecify8(Filter8);
   ArraySpecify9(Filter9);
   ArraySpecify10(Filter10);
   ArraySpecify11(Filter11);
   ArraySpecify12(Filter12);
   ArraySpecify13(Filter13);
   ArraySpecify14(Filter14);
   ArraySpecify15(Filter15);
   ArraySpecify16(Filter16);
   ArraySpecify17(Filter17);
   ArraySpecify18(Filter18);
   ArraySpecify19(Filter19);
   ArraySpecify20(Filter20);
//   ArraySpecify21(Filter21);



//-------
}

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
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter5[i];
      }
      fnum+=1;
   }
   
void ArraySpecify6 (double &Filter6[]){
ArrayResize(Filter6, 30);
ArrayFill(Filter6,0,30,0);
 Filter6[0] = -0.0488; //
 Filter6[1] = 0.6831; //
 Filter6[2] = -0.0488; //
 Filter6[3] = -0.0488; //
 Filter6[4] = -0.0488; //
 Filter6[5] = -0.0488; //
 Filter6[6] = -0.0488; //
 Filter6[7] = -0.0488; //
 Filter6[8] = 0.6831; //
 Filter6[9] = -0.0488; //
 Filter6[10] = -0.0488; //
 Filter6[11] = -0.0488; //
 Filter6[12] = -0.0488; //
 Filter6[13] = -0.0488; //
 Filter6[14] = -0.0488; //
 Filter6[15] = -0.0488; //
 Filter6[16] = -0.0488; //
 Filter6[17] = -0.0488; //
 Filter6[18] = -0.0488; //
 Filter6[19] = -0.0488; //
 Filter6[20] = -0.0488; //
 Filter6[21] = -0.0488; //
 Filter6[22] = -0.0488; //
 Filter6[23] = -0.0488; //
 Filter6[24] = -0.0488; //
 Filter6[25] = -0.0488; //
 Filter6[26] = -0.0488; //
 Filter6[27] = -0.0488; //
 Filter6[28] = -0.0488; //
 Filter6[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter6[i];
      }
      fnum+=1;
   }
   
void ArraySpecify7 (double &Filter7[]){
ArrayResize(Filter7, 30);
ArrayFill(Filter7,0,30,0);
 Filter7[0] = -0.0488; //
 Filter7[1] = 0.6831; //
 Filter7[2] = -0.0488; //
 Filter7[3] = -0.0488; //
 Filter7[4] = -0.0488; //
 Filter7[5] = -0.0488; //
 Filter7[6] = -0.0488; //
 Filter7[7] = -0.0488; //
 Filter7[8] = -0.0488; //
 Filter7[9] = 0.6831; //
 Filter7[10] = -0.0488; //
 Filter7[11] = -0.0488; //
 Filter7[12] = -0.0488; //
 Filter7[13] = -0.0488; //
 Filter7[14] = -0.0488; //
 Filter7[15] = -0.0488; //
 Filter7[16] = -0.0488; //
 Filter7[17] = -0.0488; //
 Filter7[18] = -0.0488; //
 Filter7[19] = -0.0488; //
 Filter7[20] = -0.0488; //
 Filter7[21] = -0.0488; //
 Filter7[22] = -0.0488; //
 Filter7[23] = -0.0488; //
 Filter7[24] = -0.0488; //
 Filter7[25] = -0.0488; //
 Filter7[26] = -0.0488; //
 Filter7[27] = -0.0488; //
 Filter7[28] = -0.0488; //
 Filter7[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter7[i];
      }
      fnum+=1;
   }

void ArraySpecify8 (double &Filter8[]){
ArrayResize(Filter8, 30);
ArrayFill(Filter8,0,30,0);
 Filter8[0] = -0.0488; //
 Filter8[1] = 0.6831; //
 Filter8[2] = -0.0488; //
 Filter8[3] = -0.0488; //
 Filter8[4] = -0.0488; //
 Filter8[5] = -0.0488; //
 Filter8[6] = -0.0488; //
 Filter8[7] = -0.0488; //
 Filter8[8] = -0.0488; //
 Filter8[9] = -0.0488; //
 Filter8[10] = 0.6831; //
 Filter8[11] = -0.0488; //
 Filter8[12] = -0.0488; //
 Filter8[13] = -0.0488; //
 Filter8[14] = -0.0488; //
 Filter8[15] = -0.0488; //
 Filter8[16] = -0.0488; //
 Filter8[17] = -0.0488; //
 Filter8[18] = -0.0488; //
 Filter8[19] = -0.0488; //
 Filter8[20] = -0.0488; //
 Filter8[21] = -0.0488; //
 Filter8[22] = -0.0488; //
 Filter8[23] = -0.0488; //
 Filter8[24] = -0.0488; //
 Filter8[25] = -0.0488; //
 Filter8[26] = -0.0488; //
 Filter8[27] = -0.0488; //
 Filter8[28] = -0.0488; //
 Filter8[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter8[i];
      }
      fnum+=1;
   }
   
void ArraySpecify9 (double &Filter9[]){
ArrayResize(Filter9, 30);
ArrayFill(Filter9,0,30,0);
 Filter9[0] = -0.0488; //
 Filter9[1] = 0.6831; //
 Filter9[2] = -0.0488; //
 Filter9[3] = -0.0488; //
 Filter9[4] = -0.0488; //
 Filter9[5] = -0.0488; //
 Filter9[6] = -0.0488; //
 Filter9[7] = -0.0488; //
 Filter9[8] = -0.0488; //
 Filter9[9] = -0.0488; //
 Filter9[10] = -0.0488; //
 Filter9[11] = 0.6831; //
 Filter9[12] = -0.0488; //
 Filter9[13] = -0.0488; //
 Filter9[14] = -0.0488; //
 Filter9[15] = -0.0488; //
 Filter9[16] = -0.0488; //
 Filter9[17] = -0.0488; //
 Filter9[18] = -0.0488; //
 Filter9[19] = -0.0488; //
 Filter9[20] = -0.0488; //
 Filter9[21] = -0.0488; //
 Filter9[22] = -0.0488; //
 Filter9[23] = -0.0488; //
 Filter9[24] = -0.0488; //
 Filter9[25] = -0.0488; //
 Filter9[26] = -0.0488; //
 Filter9[27] = -0.0488; //
 Filter9[28] = -0.0488; //
 Filter9[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter9[i];
      }
      fnum+=1;
   }

void ArraySpecify10 (double &Filter10[]){
ArrayResize(Filter10, 30);
ArrayFill(Filter10,0,30,0);
 Filter10[0] = -0.0488; //
 Filter10[1] = 0.6831; //
 Filter10[2] = -0.0488; //
 Filter10[3] = -0.0488; //
 Filter10[4] = -0.0488; //
 Filter10[5] = -0.0488; //
 Filter10[6] = -0.0488; //
 Filter10[7] = -0.0488; //
 Filter10[8] = -0.0488; //
 Filter10[9] = -0.0488; //
 Filter10[10] = -0.0488; //
 Filter10[11] = -0.0488; //
 Filter10[12] = 0.6831; //
 Filter10[13] = -0.0488; //
 Filter10[14] = -0.0488; //
 Filter10[15] = -0.0488; //
 Filter10[16] = -0.0488; //
 Filter10[17] = -0.0488; //
 Filter10[18] = -0.0488; //
 Filter10[19] = -0.0488; //
 Filter10[20] = -0.0488; //
 Filter10[21] = -0.0488; //
 Filter10[22] = -0.0488; //
 Filter10[23] = -0.0488; //
 Filter10[24] = -0.0488; //
 Filter10[25] = -0.0488; //
 Filter10[26] = -0.0488; //
 Filter10[27] = -0.0488; //
 Filter10[28] = -0.0488; //
 Filter10[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter10[i];
      }
      fnum+=1;
   }
   
void ArraySpecify11 (double &Filter11[]){
ArrayResize(Filter11, 30);
ArrayFill(Filter11,0,30,0);
 Filter11[0] = -0.0488; //
 Filter11[1] = 0.6831; //
 Filter11[2] = -0.0488; //
 Filter11[3] = -0.0488; //
 Filter11[4] = -0.0488; //
 Filter11[5] = -0.0488; //
 Filter11[6] = -0.0488; //
 Filter11[7] = -0.0488; //
 Filter11[8] = -0.0488; //
 Filter11[9] = -0.0488; //
 Filter11[10] = -0.0488; //
 Filter11[11] = -0.0488; //
 Filter11[12] = -0.0488; //
 Filter11[13] = 0.6831; //
 Filter11[14] = -0.0488; //
 Filter11[15] = -0.0488; //
 Filter11[16] = -0.0488; //
 Filter11[17] = -0.0488; //
 Filter11[18] = -0.0488; //
 Filter11[19] = -0.0488; //
 Filter11[20] = -0.0488; //
 Filter11[21] = -0.0488; //
 Filter11[22] = -0.0488; //
 Filter11[23] = -0.0488; //
 Filter11[24] = -0.0488; //
 Filter11[25] = -0.0488; //
 Filter11[26] = -0.0488; //
 Filter11[27] = -0.0488; //
 Filter11[28] = -0.0488; //
 Filter11[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter11[i];
      }
      fnum+=1;
   }
   
void ArraySpecify12 (double &Filter12[]){
ArrayResize(Filter12, 30);
ArrayFill(Filter12,0,30,0);
 Filter12[0] = -0.0488; //
 Filter12[1] = 0.6831; //
 Filter12[2] = -0.0488; //
 Filter12[3] = -0.0488; //
 Filter12[4] = -0.0488; //
 Filter12[5] = -0.0488; //
 Filter12[6] = -0.0488; //
 Filter12[7] = -0.0488; //
 Filter12[8] = -0.0488; //
 Filter12[9] = -0.0488; //
 Filter12[10] = -0.0488; //
 Filter12[11] = -0.0488; //
 Filter12[12] = -0.0488; //
 Filter12[13] = -0.0488; //
 Filter12[14] = 0.6831; //
 Filter12[15] = -0.0488; //
 Filter12[16] = -0.0488; //
 Filter12[17] = -0.0488; //
 Filter12[18] = -0.0488; //
 Filter12[19] = -0.0488; //
 Filter12[20] = -0.0488; //
 Filter12[21] = -0.0488; //
 Filter12[22] = -0.0488; //
 Filter12[23] = -0.0488; //
 Filter12[24] = -0.0488; //
 Filter12[25] = -0.0488; //
 Filter12[26] = -0.0488; //
 Filter12[27] = -0.0488; //
 Filter12[28] = -0.0488; //
 Filter12[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter12[i];
      }
      fnum+=1;
   }
  
void ArraySpecify13 (double &Filter13[]){
ArrayResize(Filter13, 30);
ArrayFill(Filter13,0,30,0);
 Filter13[0] = -0.0488; //
 Filter13[1] = 0.6831; //
 Filter13[2] = -0.0488; //
 Filter13[3] = -0.0488; //
 Filter13[4] = -0.0488; //
 Filter13[5] = -0.0488; //
 Filter13[6] = -0.0488; //
 Filter13[7] = -0.0488; //
 Filter13[8] = -0.0488; //
 Filter13[9] = -0.0488; //
 Filter13[10] = -0.0488; //
 Filter13[11] = -0.0488; //
 Filter13[12] = -0.0488; //
 Filter13[13] = -0.0488; //
 Filter13[14] = -0.0488; //
 Filter13[15] = 0.6831; //
 Filter13[16] = -0.0488; //
 Filter13[17] = -0.0488; //
 Filter13[18] = -0.0488; //
 Filter13[19] = -0.0488; //
 Filter13[20] = -0.0488; //
 Filter13[21] = -0.0488; //
 Filter13[22] = -0.0488; //
 Filter13[23] = -0.0488; //
 Filter13[24] = -0.0488; //
 Filter13[25] = -0.0488; //
 Filter13[26] = -0.0488; //
 Filter13[27] = -0.0488; //
 Filter13[28] = -0.0488; //
 Filter13[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter13[i];
      }
      fnum+=1;
   }
   
void ArraySpecify14 (double &Filter14[]){
ArrayResize(Filter14, 30);
ArrayFill(Filter14,0,30,0);
 Filter14[0] = -0.0488; //
 Filter14[1] = 0.6831; //
 Filter14[2] = -0.0488; //
 Filter14[3] = -0.0488; //
 Filter14[4] = -0.0488; //
 Filter14[5] = -0.0488; //
 Filter14[6] = -0.0488; //
 Filter14[7] = -0.0488; //
 Filter14[8] = -0.0488; //
 Filter14[9] = -0.0488; //
 Filter14[10] = -0.0488; //
 Filter14[11] = -0.0488; //
 Filter14[12] = -0.0488; //
 Filter14[13] = -0.0488; //
 Filter14[14] = -0.0488; //
 Filter14[15] = -0.0488; //
 Filter14[16] = 0.6831; //
 Filter14[17] = -0.0488; //
 Filter14[18] = -0.0488; //
 Filter14[19] = -0.0488; //
 Filter14[20] = -0.0488; //
 Filter14[21] = -0.0488; //
 Filter14[22] = -0.0488; //
 Filter14[23] = -0.0488; //
 Filter14[24] = -0.0488; //
 Filter14[25] = -0.0488; //
 Filter14[26] = -0.0488; //
 Filter14[27] = -0.0488; //
 Filter14[28] = -0.0488; //
 Filter14[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter14[i];
      }
      fnum+=1;
   }
   
void ArraySpecify15 (double &Filter15[]){
ArrayResize(Filter15, 30);
ArrayFill(Filter15,0,30,0);
 Filter15[0] = -0.0488; //
 Filter15[1] = 0.6831; //
 Filter15[2] = -0.0488; //
 Filter15[3] = -0.0488; //
 Filter15[4] = -0.0488; //
 Filter15[5] = -0.0488; //
 Filter15[6] = -0.0488; //
 Filter15[7] = -0.0488; //
 Filter15[8] = -0.0488; //
 Filter15[9] = -0.0488; //
 Filter15[10] = -0.0488; //
 Filter15[11] = -0.0488; //
 Filter15[12] = -0.0488; //
 Filter15[13] = -0.0488; //
 Filter15[14] = -0.0488; //
 Filter15[15] = -0.0488; //
 Filter15[16] = -0.0488; //
 Filter15[17] = 0.6831; //
 Filter15[18] = -0.0488; //
 Filter15[19] = -0.0488; //
 Filter15[20] = -0.0488; //
 Filter15[21] = -0.0488; //
 Filter15[22] = -0.0488; //
 Filter15[23] = -0.0488; //
 Filter15[24] = -0.0488; //
 Filter15[25] = -0.0488; //
 Filter15[26] = -0.0488; //
 Filter15[27] = -0.0488; //
 Filter15[28] = -0.0488; //
 Filter15[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter15[i];
      }
      fnum+=1;
   }

void ArraySpecify16 (double &Filter16[]){
ArrayResize(Filter16, 30);
ArrayFill(Filter16,0,30,0);
 Filter16[0] = -0.0488; //
 Filter16[1] = 0.6831; //
 Filter16[2] = -0.0488; //
 Filter16[3] = -0.0488; //
 Filter16[4] = -0.0488; //
 Filter16[5] = -0.0488; //
 Filter16[6] = -0.0488; //
 Filter16[7] = -0.0488; //
 Filter16[8] = -0.0488; //
 Filter16[9] = -0.0488; //
 Filter16[10] = -0.0488; //
 Filter16[11] = -0.0488; //
 Filter16[12] = -0.0488; //
 Filter16[13] = -0.0488; //
 Filter16[14] = -0.0488; //
 Filter16[15] = -0.0488; //
 Filter16[16] = -0.0488; //
 Filter16[17] = -0.0488; //
 Filter16[18] = 0.6831; //
 Filter16[19] = -0.0488; //
 Filter16[20] = -0.0488; //
 Filter16[21] = -0.0488; //
 Filter16[22] = -0.0488; //
 Filter16[23] = -0.0488; //
 Filter16[24] = -0.0488; //
 Filter16[25] = -0.0488; //
 Filter16[26] = -0.0488; //
 Filter16[27] = -0.0488; //
 Filter16[28] = -0.0488; //
 Filter16[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter16[i];
      }
      fnum+=1;
   }
   
void ArraySpecify17 (double &Filter17[]){
ArrayResize(Filter17, 30);
ArrayFill(Filter17,0,30,0);
 Filter17[0] = -0.0488; //
 Filter17[1] = 0.6831; //
 Filter17[2] = -0.0488; //
 Filter17[3] = -0.0488; //
 Filter17[4] = -0.0488; //
 Filter17[5] = -0.0488; //
 Filter17[6] = -0.0488; //
 Filter17[7] = -0.0488; //
 Filter17[8] = -0.0488; //
 Filter17[9] = -0.0488; //
 Filter17[10] = -0.0488; //
 Filter17[11] = -0.0488; //
 Filter17[12] = -0.0488; //
 Filter17[13] = -0.0488; //
 Filter17[14] = -0.0488; //
 Filter17[15] = -0.0488; //
 Filter17[16] = -0.0488; //
 Filter17[17] = -0.0488; //
 Filter17[18] = -0.0488; //
 Filter17[19] = 0.6831; //
 Filter17[20] = -0.0488; //
 Filter17[21] = -0.0488; //
 Filter17[22] = -0.0488; //
 Filter17[23] = -0.0488; //
 Filter17[24] = -0.0488; //
 Filter17[25] = -0.0488; //
 Filter17[26] = -0.0488; //
 Filter17[27] = -0.0488; //
 Filter17[28] = -0.0488; //
 Filter17[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter17[i];
      }
      fnum+=1;
   }
   
void ArraySpecify18 (double &Filter18[]){
ArrayResize(Filter18, 30);
ArrayFill(Filter18,0,30,0);
 Filter18[0] = -0.0488; //
 Filter18[1] = 0.6831; //
 Filter18[2] = -0.0488; //
 Filter18[3] = -0.0488; //
 Filter18[4] = -0.0488; //
 Filter18[5] = -0.0488; //
 Filter18[6] = -0.0488; //
 Filter18[7] = -0.0488; //
 Filter18[8] = -0.0488; //
 Filter18[9] = -0.0488; //
 Filter18[10] = -0.0488; //
 Filter18[11] = -0.0488; //
 Filter18[12] = -0.0488; //
 Filter18[13] = -0.0488; //
 Filter18[14] = -0.0488; //
 Filter18[15] = -0.0488; //
 Filter18[16] = -0.0488; //
 Filter18[17] = -0.0488; //
 Filter18[18] = -0.0488; //
 Filter18[19] = -0.0488; //
 Filter18[20] = 0.6831; //
 Filter18[21] = -0.0488; //
 Filter18[22] = -0.0488; //
 Filter18[23] = -0.0488; //
 Filter18[24] = -0.0488; //
 Filter18[25] = -0.0488; //
 Filter18[26] = -0.0488; //
 Filter18[27] = -0.0488; //
 Filter18[28] = -0.0488; //
 Filter18[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter18[i];
      }
      fnum+=1;
   }
  
void ArraySpecify19 (double &Filter19[]){
ArrayResize(Filter19, 30);
ArrayFill(Filter19,0,30,0);
 Filter19[0] = -0.0488; //
 Filter19[1] = 0.6831; //
 Filter19[2] = -0.0488; //
 Filter19[3] = -0.0488; //
 Filter19[4] = -0.0488; //
 Filter19[5] = -0.0488; //
 Filter19[6] = -0.0488; //
 Filter19[7] = -0.0488; //
 Filter19[8] = -0.0488; //
 Filter19[9] = -0.0488; //
 Filter19[10] = -0.0488; //
 Filter19[11] = -0.0488; //
 Filter19[12] = -0.0488; //
 Filter19[13] = -0.0488; //
 Filter19[14] = -0.0488; //
 Filter19[15] = -0.0488; //
 Filter19[16] = -0.0488; //
 Filter19[17] = -0.0488; //
 Filter19[18] = -0.0488; //
 Filter19[19] = -0.0488; //
 Filter19[20] = -0.0488; //
 Filter19[21] = 0.6831; //
 Filter19[22] = -0.0488; //
 Filter19[23] = -0.0488; //
 Filter19[24] = -0.0488; //
 Filter19[25] = -0.0488; //
 Filter19[26] = -0.0488; //
 Filter19[27] = -0.0488; //
 Filter19[28] = -0.0488; //
 Filter19[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter19[i];
      }
      fnum+=1;
   }
   
void ArraySpecify20 (double &Filter20[]){
ArrayResize(Filter20, 30);
ArrayFill(Filter20,0,30,0);
 Filter20[0] = -0.0488; //
 Filter20[1] = 0.6831; //
 Filter20[2] = -0.0488; //
 Filter20[3] = -0.0488; //
 Filter20[4] = -0.0488; //
 Filter20[5] = -0.0488; //
 Filter20[6] = -0.0488; //
 Filter20[7] = -0.0488; //
 Filter20[8] = -0.0488; //
 Filter20[9] = -0.0488; //
 Filter20[10] = -0.0488; //
 Filter20[11] = -0.0488; //
 Filter20[12] = -0.0488; //
 Filter20[13] = -0.0488; //
 Filter20[14] = -0.0488; //
 Filter20[15] = -0.0488; //
 Filter20[16] = -0.0488; //
 Filter20[17] = -0.0488; //
 Filter20[18] = -0.0488; //
 Filter20[19] = -0.0488; //
 Filter20[20] = -0.0488; //
 Filter20[21] = -0.0488; //
 Filter20[22] = 0.6831; //
 Filter20[23] = -0.0488; //
 Filter20[24] = -0.0488; //
 Filter20[25] = -0.0488; //
 Filter20[26] = -0.0488; //
 Filter20[27] = -0.0488; //
 Filter20[28] = -0.0488; //
 Filter20[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter20[i];
      }
      fnum+=1;
   }
   
void ArraySpecify21 (double &Filter21[]){
ArrayResize(Filter21, 30);
ArrayFill(Filter21,0,30,0);
 Filter21[0] = -0.0488; //
 Filter21[1] = 0.6831; //
 Filter21[2] = -0.0488; //
 Filter21[3] = -0.0488; //
 Filter21[4] = -0.0488; //
 Filter21[5] = -0.0488; //
 Filter21[6] = -0.0488; //
 Filter21[7] = -0.0488; //
 Filter21[8] = -0.0488; //
 Filter21[9] = -0.0488; //
 Filter21[10] = -0.0488; //
 Filter21[11] = -0.0488; //
 Filter21[12] = -0.0488; //
 Filter21[13] = -0.0488; //
 Filter21[14] = -0.0488; //
 Filter21[15] = -0.0488; //
 Filter21[16] = -0.0488; //
 Filter21[17] = -0.0488; //
 Filter21[18] = -0.0488; //
 Filter21[19] = -0.0488; //
 Filter21[20] = -0.0488; //
 Filter21[21] = -0.0488; //
 Filter21[22] = -0.0488; //
 Filter21[23] = 0.6831; //
 Filter21[24] = -0.0488; //
 Filter21[25] = -0.0488; //
 Filter21[26] = -0.0488; //
 Filter21[27] = -0.0488; //
 Filter21[28] = -0.0488; //
 Filter21[29] = -0.0488; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter21[i];
      }
      fnum+=1;
   }

void ArraySpecify0 (double &Filter0[]){
ArrayResize(Filter0, 30);
ArrayFill(Filter0,0,30,0);
 Filter0[0] = 0.3059; //
 Filter0[1] = 0.2848; //
 Filter0[2] = 0.2637; //
 Filter0[3] = 0.2426; //
 Filter0[4] = 0.2215; //
 Filter0[5] = 0.2004; //
 Filter0[6] = 0.1793; //
 Filter0[7] = 0.1582; //
 Filter0[8] = 0.1371; //
 Filter0[9] = 0.1160; //
 Filter0[10] = 0.0949; //
 Filter0[11] = 0.0738; //
 Filter0[12] = 0.0527; //
 Filter0[13] = 0.0316; //
 Filter0[14] = 0.0105; //
 Filter0[15] = -0.0105; //
 Filter0[16] = -0.0316; //
 Filter0[17] = -0.0527; //
 Filter0[18] = -0.0738; //
 Filter0[19] = -0.0949; //
 Filter0[20] = -0.1160; //
 Filter0[21] = -0.1371; //
 Filter0[22] = -0.1582; //
 Filter0[23] = -0.1793; //
 Filter0[24] = -0.2004; //
 Filter0[25] = -0.2215; //
 Filter0[26] = -0.2426; //
 Filter0[27] = -0.2637; //
 Filter0[28] = -0.2848; //
 Filter0[29] = -0.3059; //
for(int i=0; i<30; i++) {
         FiltersDT[fnum][i]=Filter0[i];
      }
      fnum+=1;
   }


//--------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTrade()
  {
//---
   
  }
