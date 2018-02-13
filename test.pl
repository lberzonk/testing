use strict;
use warnings;

#use the TRNG and pull a number
use Crypt::Random qw( makerandom );


#initialize Math::Random::MT module as a PRNG
use Math::Random::MT qw( irand );

#make an array to house the numbers from the TRNG


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


#print $x, "\n";

#print $y, "\n";





