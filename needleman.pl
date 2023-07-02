use List::Util qw(max);
#initialize the sequences
$sequence1 = "ATGCT";
$sequence2 = "AGCT";

#providing the scores for match,mismatch and gap
$match = 1;
$mismatch = -1;
$gap = -2;

#initialize two matrix
@main_matrix;
@match_checker_matrix;

my @chars1 = split("", $sequence1);
my @chars2 = split("", $sequence2);

#create match-checker-matrix and fill according to match or mismatch
for(my $i=0;$i<length($sequence1);$i++){

	for(my $j=0;$j<length($sequence2);$j++){
	
		if($chars1[$i] eq $chars2[$j]){
			$match_checker_matrix[$i][$j] = $match;
			print (" ",$match_checker_matrix[$i][$j]," ");
		}
		else{
			$match_checker_matrix[$i][$j] = $mismatch;
			print ($match_checker_matrix[$i][$j]," ");
		}
	}
	print("\n");	
}
print("\n\n");


#step-1 =>initialization 
for(my $i=0;$i<length($sequence1)+1;$i++){
	$main_matrix[$i][0] = $i * $gap;
}
for(my $j=0;$j<length($sequence2)+1;$j++){
	$main_matrix[0][$j] = $j * $gap;
}

#step-2 =>matrix filling
for(my $i=1;$i<length($sequence1)+1;$i++){
	for(my $j=1;$j<length($sequence2)+1;$j++){
		$main_matrix[$i][$j] = max($main_matrix[$i-1][$j]+$gap,
								   $main_matrix[$i][$j-1]+$gap,
								   $main_matrix[$i-1][$j-1]+$match_checker_matrix[$i-1][$j-1]);
	}
}
	

for(my $i=0;$i<length($sequence1)+1;$i++){
	for(my $j=0;$j<length($sequence1)+1;$j++){
		print ("  ",$main_matrix[$i][$j],"   ");
	}
	print("\n");
}

print("\n\n");

#step-3 =>traceback

$aligned1="";
$aligned2="";
$ti = length($sequence1);
$tj = length($sequence2);

while($ti>0 or $tj>0){
	if($ti>0 and $tj>0 and $main_matrix[$ti][$tj] == $main_matrix[$ti-1][$tj-1]+$match_checker_matrix[$ti-1][$tj-1]){
		$aligned1 = $chars1[$ti-1].$aligned1;
		$aligned2 = $chars2[$tj-1].$aligned2;
		$ti = $ti-1;
		$tj = $tj-1;
	}
	elsif($ti>0 and $main_matrix[$ti][$tj]== $main_matrix[$ti-1][$tj]+$gap){
		$aligned1 = $chars1[$ti-1].$aligned1;
		$aligned2 = "-".$aligned2;
		$ti = $ti-1;
	}
	else{
		$aligned1 = "-".$aligned1;
		$aligned2 = $chars2[$tj-1].$aligned2;
		$tj= $tj-1;
	}
}

#test
print ($aligned1,"\n");
print $aligned2;





