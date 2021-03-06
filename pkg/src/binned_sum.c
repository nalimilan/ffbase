#include <R.h>
#include <Rdefines.h>
#include <R_ext/Error.h>

SEXP binned_sum ( SEXP x, SEXP bin, SEXP nbins, SEXP res) {

     double *rx = REAL(x);
     int *ibin = INTEGER(bin);
     const int nb = *INTEGER(nbins);
     const int nx = length(x);
     double *rres = REAL(res);
                  
     for (int i = 0; i < nx; i++){
        int b = ibin[i] - 1;
		// check if b in within boundaries
        if (-1 < b && b < nb){
           if (ISNA(rx[i])){
             rres[b + 2*nb] += 1;
           } else {
             rres[b] += 1;
             rres[b + nb] += rx[i];
           }
        }
     }
     return res;
}
