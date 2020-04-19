#include<stdio.h>
#include<math.h>
#include"mymath.h"

double f (double x){
	return cos(x)+x;
}

int main(){

	printf("6! = %d\n",factorial(6));
	printf("(cosx + x)' (4) = %f\n",first_derivative(f,4.,0.01));
	printf("(cosx + x)'' (4) = %f\n",second_derivative(f,4.,0.01));	
	printf("finite integral of cosx + x between 0 and 1 = %f\n",simple_integral(f,0.,1.,0.01));

	return 0;
}
