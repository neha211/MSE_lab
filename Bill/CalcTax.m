#import <foundation/foundation.h>
#import "CalcTax.h"
#import "Kst.h"
#import "Vat.h"
#import "Cst.h"

@implementation CalcTax

-(void)CalcTaxonBill:(Bill*) bill;
{
	if([bill BillType] == 1)
	{
		int  amt = [bill BillAmt];

		Kst *k = [[Kst alloc] init];
		[bill setTaxAmt: [k CalTax:amt]];
		
		Cst *c = [[Cst alloc] init];
		[bill setTaxAmt: [bill TaxAmt] + [c CalTax: amt + [bill TaxAmt]]];

	}
	else if([bill BillType] == 2)
	{
		Vat *v = [[Vat alloc] init];
		int  amt = [bill BillAmt];
		[bill setTaxAmt: [v CalTax:amt]];
	}
	[bill setTotalAmt: [bill BillAmt] + [bill TaxAmt]];	
}

@end