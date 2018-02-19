use strict;
use warnings;
# Made by Lev Berzon-Kozlov and Christopher Cozart

# use Math::Complex to pull the number pi from the perl module.
use Math::Complex ':pi';

#use the TRNG and pull a number
use Crypt::Random qw( makerandom );

#import Math::Cephes package to calculate gcd

use Math::Cephes qw ( euclid );

#initialize Math::Random::MT module as a PRNG
use Math::Random::MT qw( irand );

#make an array to house the numbers from the TRNG

#print pi;

my @trn; 
my $trnumber;

#make an array and variable to house one of the PRNG
my @prng_one;
my $prnumber_one;

my @rand_built_in;
my $rand;

for (my $i=0; $i <= 999; $i++) {

	$trnumber = makerandom (Size => 8, Strength => 1, Uniform => 1 );
	@trn[$i] = $trnumber;

	#print $trn[$i], "\n";

}


for (my $j=0; $j <= 999; $j++) {

	$prnumber_one = irand(1000);
	@prng_one[$j] = $prnumber_one;

	}

for (my $k=0; $k <= 999; $k++) {

	$rand = int rand (1000);
	@rand_built_in[$k] = $rand;

}

my $gcd_counter = 0;

#get gcd of the trngs
for (my $c=0; $c <= 998; $c+2){

	my $first;
	my $second;
	my $q = $c + 1;
	
	
	$first = @trn[$c];
	$second = @trn[$q];
	
	my $gcd = euclid ($first , $second);
		
		if ($gcd == 1) {
					
			$gcd_counter++;
		}
		
}		
		
