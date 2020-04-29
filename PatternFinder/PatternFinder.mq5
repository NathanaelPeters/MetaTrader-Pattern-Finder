//+------------------------------------------------------------------+
//|                                                PatternFinder.mq5 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
   #include "DoubleTopArrays.mq5"

   string Pairs[12] = {"EURUSD", "GBPUSD", "USDCHF", "USDJPY", "USDCAD", "AUDUSD", "NZDUSD", "AUDCAD", "CADCHF", "EURCAD", "GBPCAD", "NZDCAD"};
   ENUM_TIMEFRAMES Times[7] = {PERIOD_M30, PERIOD_H1, PERIOD_H4, PERIOD_H8, PERIOD_D1, PERIOD_W1};
   
   double input Psim = 0.7;
   ENUM_APPLIED_PRICE input price_ = PRICE_OPEN;
   ENUM_MA_METHOD input MAmethod = MODE_SMA;
   int Report_Handle;
   
int OnInit()
  {
//---
   SpecifyArraysDT();
   Report_Handle = FileOpen(FileName,FILE_WRITE|FILE_ANSI|FILE_TXT);

   for(int i=ArraySize(Pairs)-1; i>=0; i--){
      double Open[];
      ArrayResize(Open, 30);
      ArrayFill(Open, 0, 30, 0);
      for (int n=ArraySize(Times)-1; n>=0; n--){
        double Open1 = CopyOpen(Pairs[i], Times[n], 0, 30, Open); 
        int cnt = 0;
        double fout[];
        ArrayResize(fout, fnum);
        ArrayFill(fout,0,fnum,0);
        for (int k=0; k<fnum; k++) {
               double sum = 0;
               for(int j=0; j<Open1; j++) {
                   sum += Open[j];
               }
               double ssum = 0;
               for(int j=0; j<Open1; j++) {
                  Open[j] -= sum/Open1;
                  ssum += Open[j]*Open[j];
               }
               double norm = sqrt(ssum);
               for(int j=0; j<Open1;j++) {
                  Open[j] = Open[j]/norm;
                }
           for (int m=0; m<=29; m++) {  
               fout[k] += Open[m]*FiltersDT[k][m];
           }
           if(fout[k] >=Psim || fout[k] <= -Psim) {
               Alert(Pairs[i], " ", EnumToString(Times[n]), " count: ", cnt, " ", TimeCurrent(), " Filter", (k+5), " fout: ", fout[k]);
           }
        }
     
      }
   }
   EventSetTimer(300);
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
   for(int i=ArraySize(Pairs)-1; i>=0; i--){
      double Open[];
      int MA_handle;
      ArrayResize(Open, 30);
      ArrayFill(Open, 0, 30, 0);
      for (int n=ArraySize(Times)-1; n>=0; n--){
        double Open1 = CopyOpen(Pairs[i], Times[n], 0, 30, Open);
        int cnt = 0;
        double fout[];
        ArrayResize(fout, fnum);
        ArrayFill(fout,0,fnum,0);
        for (int k=0; k<fnum; k++) {
               double sum = 0;
               for(int j=0; j<Open1; j++) {
                   sum += Open[j];
               }
               double ssum = 0;
               for(int j=0; j<Open1; j++) {
                  Open[j] -= sum/Open1;
                  ssum += Open[j]*Open[j];
               }
               double norm = sqrt(ssum);
               for(int j=0; j<Open1;j++) {
                  Open[j] = Open[j]/norm;
                }
           for (int m=0; m<=29; m++) {  
               fout[k] += Open[m]*FiltersDT[k][m];
           }
           if(fout[k] >=Psim || fout[k] <= -Psim) {
               Alert(Pairs[i], " ", EnumToString(Times[n]), " count: ", cnt, " ", TimeCurrent(), " Filter", (k+5), " fout: ", fout[k]);
           }
        }
     
      }
   }
  }

