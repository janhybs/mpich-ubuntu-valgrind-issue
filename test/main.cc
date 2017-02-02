#include <stdio.h>
#include "mpi.h" 

// source from
// http://valgrind.10908.n7.nabble.com/Error-when-profiling-MPI-program-quot-sigaction-failed-Invalid-argument-quot-td37170.html
int main(int argc, char **argv) { 
   int rank; 
   char host[150]; 
   int namelen; 

   /* Initialize MPI. This handles mpich-specific command line arguments */ 
   MPI_Init(&argc, &argv); 

   /* Get my rank. My rank number gets stored in the 'rank' variable */ 
   MPI_Comm_rank(MPI_COMM_WORLD, &rank); 

   /* Look up what computer I am running on. Store it in 'host' */ 
   MPI_Get_processor_name(host, &namelen); 

   printf("Hello world (Rank: %d / Host: %s)\n", rank, host); 
   fflush(stdout); 

   /* Finalize: Close connections to the other children, clean up memory 
    * the MPI library has allocated, etc */ 
   MPI_Finalize(); 
   return 0; 
}
