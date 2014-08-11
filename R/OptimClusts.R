OptimClusts <-
function(P, Eps){
        ## P IS THE VECTOR CONTAINING THE AVERAGE SILHOUETTE WIDTHS
        ## Eps IS THE TUNING PARAMETER WHICH DEFINES MINIMUM DIFFERENCE BETWEEN MAXIMUM WIDTH AND THE NEXT LARGEST WIDTH. 
        N <- length(P);
        D <- seq(2,N+1, by = 1);
        MaxP <- max(P);
        S <- D[which(MaxP - P[-N] < Eps*MaxP)];
        Z <- (P[S-1]-P[1])/(S-1) - (MaxP - P[S-1]);
        return(S[which(Z == max(Z))]-1);
}
