//+------------------------------------------------------------------+
//|                                                   BatmanEars.mq5 |
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

//---
   string Feb25_230 = "2020.02.25 15:00:00";
   string Feb25_130 = "2020.02.25 13:30:00";
   datetime Jan_02 = D'2020.01.02 06:00:00';
   datetime  StringToTime(
     string Feb25_000      // date string
   );
  
  
   double input Psim = 0.7;
   int input avgbar = 30;
   int count = 0;
   ENUM_TIMEFRAMES input period = PERIOD_M5;
   ENUM_APPLIED_PRICE input price_ = PRICE_OPEN;
   ENUM_MA_METHOD input MAmethod = MODE_SMA;

   double High[],Low[],Open[],Close[],Hist_MA[];
//   double Open1 = CopyOpen(Symbol(), period, 0, avgbar, Open);
//   double Close1 = CopyClose(Symbol(), period, 0, avgbar, Close);
//  double High1 = CopyHigh(Symbol(), period, 0, avgbar, High);
//   double Low1 = CopyLow(Symbol(), period, 0, avgbar, Low);

//---- arrays for indicators
   double      MA[];                // array for the indicator iMA
//---- handles for indicators
   int         MA_handle;           // handle of the indicator iMA
  
   
   
int OnInit()
  {
//---
   ArrayResize(MA, avgbar);
   ArrayFill(MA,0,avgbar,0);
   ArrayResize(Hist_MA, avgbar);
   ArrayFill(Hist_MA,0,avgbar,0);
   ArrayResize(Open, avgbar);
   ArrayFill(Open,0,avgbar,0);
   double Open1 = CopyOpen(Symbol(), period, 0, avgbar, Open);
   //--- creation of the indicator iMA
   MA_handle=iMA(Symbol(),period,avgbar,0,MAmethod,price_);
   
   SpecifyArraysDT ();
   
   CopyBuffer(MA_handle,0,0,avgbar,MA);
   //--- set indexing of elements as series, as in MQL4
   ArraySetAsSeries(MA,true); 
   ArrayReverse(MA);
   for (int i=avgbar-1; i>0; i--) {
      Hist_MA[i]=Open[i]-MA[i];
   }

   int cnt = 0;
   double fout[];
   ArrayResize(fout, fnum);
   ArrayFill(fout,0,fnum,0);
   for (int k=0; k<fnum; k++) {
      for (int i=0; i<avgbar; i++) { 
         fout[k] += Hist_MA[i]*FiltersDT[k][i];
      }
      if(fout[k] >=Psim || fout[k] <= -Psim) {
         count++;
         Alert("count: ", count, " ", TimeCurrent(), " Filter", (k+5));
      }
   }
   EventSetTimer(PeriodSeconds(period));
   
         
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
   ArrayResize(MA, avgbar);
   ArrayFill(MA,0,avgbar,0);
   ArrayResize(Hist_MA, avgbar);
   ArrayFill(Hist_MA,0,avgbar,0);
   ArrayResize(Open, avgbar);
   ArrayFill(Open,0,avgbar,0);

   double Open1 = CopyOpen(Symbol(), period, 1, avgbar, Open);
   ArrayReverse(Open);
   
   double sum = 0;
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
//-------------
   //--- creation of the indicator iMA
   MA_handle=iMA(Symbol(),period,30,0,MAmethod,price_);
   ArrayResize(Hist_MA, avgbar);
   
   CopyBuffer(MA_handle,0,0,avgbar,MA);
   ArrayReverse(MA);
   //--- set indexing of elements as series, as in MQL4
   ArraySetAsSeries(MA,true); 
   ArrayReverse(MA);
   for (int i=avgbar-1; i>=0; i--) {
      Hist_MA[i]=Open[i]-MA[0];
   }

//--------------
   double fout[];
   ArrayResize(fout, fnum);
   ArrayFill(fout,0,fnum,0);
   for (int k=0; k<fnum; k++) {
      for (int i=0; i<avgbar; i++) { 
//         fout[k] += Hist_MA[i]*Filters[k][i];
           fout[k] += Open[i]*FiltersDT[k][i];
      }
      if(TimeCurrent() > Jan_02) {
         if(fout[k] >=Psim || fout[k] <= -Psim) {
            count++;
            Alert("count: ", count, " ", TimeCurrent()-(30*PeriodSeconds(period)), " Filter", (k+5), " Fout: ", fout[k]);
//             Print("HIST_MA");
//             ArrayPrint(Hist_MA);
//             Print("FILTER:");
//             ArrayPrint(Filter12);  
         }
      }
   }
   

//  if(Feb25_230 >= TimeCurrent() && Feb25_130<= TimeCurrent())
//  {
//      Alert("Filter8: ");
//      ArrayPrint(Filter8, WHOLE_ARRAY);
//      Alert("Open: ");
//      ArrayPrint(Open, WHOLE_ARRAY);
//      Alert("Hist_MA: ");
//      ArrayPrint(Hist_MA, WHOLE_ARRAY);
//   } 
  
   EventSetTimer(PeriodSeconds(period));
   
   
  }

//+------------------------------------------------------------------+
//| Tester function                                                  |
//+------------------------------------------------------------------+
double OnTester()
  {
//---
   double ret=0.0;
//---

//---
   return(ret);
  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---
   
  }
//+------------------------------------------------------------------+