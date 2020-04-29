from math import sqrt

n=[]
n.append(1) #0
n.append(0) #1 
n.append(0) #2 
n.append(0) #3 
n.append(0) #4
n.append(0) #5 
n.append(1.5) #6 
n.append(0) #7 
n.append(0) #8 
n.append(0) #9 
n.append(0) #10 
n.append(0) #11 
n.append(1) #12 
n.append(0) #13
n.append(0) #14 
n.append(0) #15 
n.append(0) #16 
n.append(0) #17 
n.append(0) #18
n.append(0) #19
n.append(0) #20  
n.append(0) #21 
n.append(0) #22 
n.append(0) #23 
n.append(0) #24 
n.append(0) #25 
n.append(0) #26 
n.append(0) #27
n.append(0) #28
n.append(0) #29

#n= [29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0]
def FilterMaker(n,index):
    Sum = 0
    for i in range(30):
      Sum += n[i]
    print('void ArraySpecify%s (double &Filter%s[]){'%(index,index))
    print('ArrayResize(Filter%s, 30);'%(index))
    print('ArrayFill(Filter%s,0,30,0);'%(index))
    ss = 0.0
    for i in range(30):
      n[i] -= Sum/30.0
      ss += n[i]*n[i]
    norm = sqrt(ss)
    for i in range(30):
      n[i] = n[i]/norm

    for i in range(30):
      print(' Filter%s[%s] = %.4f; //'%(index,i,n[i]))
    print('''for(int i=0; i<30; i++) {
         FiltersHS[fnum][i]=Filter%s[i];
      }        
      fnum+=1;             
   }'''%(index)) 
    if Sum > 0 and Sum < 0:
        print ("Sum === !0")


FilterMaker(n,"5x5")


