#include <R.h>
#include <stdlib.h>
#include <Rmath.h>

// PASS THE ENTIRE DATA MATRIX, NUMBER OF SAMPLES AND NUMBER OF FEATURES 
// TO CALCULATE THE SYMMMETRIC DISTANCE MATRIX, WHICH IS RETURNED AS AN ARRAY

double kendall_dist(double *x, double *y, int n, double p);

void KendallDistance(double * Data, int * N, int * Features, double * Penalty, double *X, double *Y, double * Distance){
     int i, j, k;
     int DistPair;
     for (i = 0; i < *N; i++){
            for (j = 0; j < *N; j++){
                DistPair = i*(*N) + j;
                for (k = 0; k < *Features; k++){
                        X[k] = Data[i*(*Features) + k];
                        Y[k] = Data[j*(*Features) + k];
                }
                Distance[DistPair] = kendall_dist(X, Y, *Features, *Penalty);
            }
     }
}

double kendall_dist(double *x, double *y, int n, double p){
  double kdist = 0;
  int counter1, counter2;
  int NZTaxa = 0; /*THE NUMBER OF NON-ZERO TAXA */
  for (int i = 0; i < n; i++){
        if (x[i] + y[i] != 0){
            NZTaxa += 1;
        }
  }
  if (NZTaxa == 1){
    kdist = 0;
  }
  else{
      for (counter1 = 0; counter1 < n-1; counter1++){
        for (counter2 = counter1+1; counter2 < n; counter2++){
            if ((x[counter1] + y[counter1]) != 0 && (x[counter2] + y[counter2]) != 0){
              if ((x[counter1] != x[counter2]) && (y[counter1] != y[counter2])){
                    kdist += (x[counter1] > x[counter2])*(y[counter1] < y[counter2]) + (x[counter1] < x[counter2])*(y[counter1] > y[counter2]);  
              }
              else if (x[counter1] == x[counter2] && y[counter1] != y[counter2] ){
                    kdist += p;
              }
              else if (y[counter1] == y[counter2] && x[counter1] != x[counter2] ){
                    kdist += p;
              }
            }
        }
      }
      kdist = kdist/(NZTaxa*(NZTaxa-1)/2);
  }
  return kdist ;
}
