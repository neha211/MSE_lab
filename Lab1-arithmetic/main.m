#import <Foundation/Foundation.h>
#import "arithmetic.h"

int main (int argc, const char * argv[])
{
   
    arithmetic *ar = [[arithmetic alloc]init];

    NSLog(@"\nResults of arithmetic operations:");
    NSLog(@"\nAddition(5,10): %d\n", [ar addpara : 5: 10]);
	NSLog(@"\nMultiplication(5,12): %d\n", [ar multipara : 5: 12]);
	NSLog(@"\nSubtraction(75,61): %d\n", [ar subpara : 75: 61]);
	NSLog(@"\nDivision(500,10): %f\n", [ar divpara : 500: 10]);

    return 0;
}



