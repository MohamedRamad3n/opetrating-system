#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int sum = 0  ;
void* thread_code ( void * param )
{ int low = 1 ;  
 int up= 10 ;
 srand(time(0));
 sum= sum + ( (rand() % (up - low +1 )) + low );

}
int main ()
{
pthread_t thread[5];
for ( int j =0 ; j<5 ; j++)
{
pthread_create( &thread[j], 0,thread_code,0 );
 

}

for (int j = 0; j<5; j++)
{
pthread_join (thread[j],0);
}

printf(" sum is = %d ", sum);

}
