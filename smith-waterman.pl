# Smith-Waterman  Algorithm

#initialize the sequences
my $sequence1="ATGCT"; 
my $sequence2="AGCT";

# scoring scheme
my $MATCH    =  1; # +1 for letters that match
my $MISMATCH = -1; # -1 for letters that mismatch
my $GAP      = -2; # -2 for any gap

# initialization
my @matrix;

$matrix[0][0]{score}   = 0;
$matrix[0][0]{pointer} = "none";

for(my $j = 1; $j <= length($sequence1); $j++) {
    $matrix[0][$j]{score}   = 0;
    $matrix[0][$j]{pointer} = "none";
}
for (my $i = 1; $i <= length($sequence2); $i++) {
    $matrix[$i][0]{score}   = 0;
    $matrix[$i][0]{pointer} = "none";
}

#matrix filling
my $max_i     = 0;
my $max_j     = 0;
my $max_score = 0;

for(my $i = 1; $i <= length($sequence2); $i++) {
    for(my $j = 1; $j <= length($sequence1); $j++) {
        my ($diagonal_score, $left_score, $up_score);
        
        # calculate match score
        my $letter1 = substr($sequence1, $j-1, 1);
        my $letter2 = substr($sequence2, $i-1, 1);       
        if ($letter1 eq $letter2) {
            $diagonal_score = $matrix[$i-1][$j-1]{score} + $MATCH;
        }
        else {
            $diagonal_score = $matrix[$i-1][$j-1]{score} + $MISMATCH;
        }
        
        # calculate gap scores
        $up_score   = $matrix[$i-1][$j]{score} + $GAP;
        $left_score = $matrix[$i][$j-1]{score} + $GAP;
        
        if ($diagonal_score <= 0 and $up_score <= 0 and $left_score <= 0) {
            $matrix[$i][$j]{score}   = 0;
            $matrix[$i][$j]{pointer} = "none";
            next; # terminate this iteration of the loop
        }
        
        # choose best score
        if ($diagonal_score >= $up_score) {
            if ($diagonal_score >= $left_score) {
                $matrix[$i][$j]{score}   = $diagonal_score;
                $matrix[$i][$j]{pointer} = "diagonal";
            }
            else {
                $matrix[$i][$j]{score}   = $left_score;
                $matrix[$i][$j]{pointer} = "left";
            }
        } else {
            if ($up_score >= $left_score) {
                $matrix[$i][$j]{score}   = $up_score;
                $matrix[$i][$j]{pointer} = "up";
            }
            else {
                $matrix[$i][$j]{score}   = $left_score;
                $matrix[$i][$j]{pointer} = "left";
            }
        }
        
        # set maximum score
        if ($matrix[$i][$j]{score} > $max_score) {
            $max_i     = $i;
            $max_j     = $j;
            $max_score = $matrix[$i][$j]{score};
        }
    }
}

#printing the matrix score

for(my $i=0;$i<length($sequence2)+1;$i++){
	for(my $j=0;$j<length($sequence1)+1;$j++){
		print ("  ",$matrix[$i][$j]{score},"   ");
	}
	print("\n");
}
print("\n\n");

#printing the matrix pointer

for(my $i=0;$i<length($sequence2)+1;$i++){
	for(my $j=0;$j<length($sequence1)+1;$j++){
		print ("  ",$matrix[$i][$j]{pointer},"   ");
	}
	print("\n");
}

print("\n\n");

# trace-back

my $align1 = "";
my $align2 = "";

my $j = $max_j; #column
my $i = $max_i; #row

while ($matrix[$i][$j]{pointer} ne "none") {
    
    if ($matrix[$i][$j]{pointer} eq "diagonal") {
        $align1 = substr($sequence1, $j-1, 1). $align1 ;
        $align2 = substr($sequence2, $i-1, 1).$align2 ;
        $i--; $j--;
    }
    elsif ($matrix[$i][$j]{pointer} eq "left") {
        $align1 = substr($sequence1, $j-1, 1).$align1 ;
        $align2 = "-".$align2 ;
        $j--;
    }
    elsif ($matrix[$i][$j]{pointer} eq "up") {
        $align1 = "-". $align1 ;
        $align2 = substr($sequence2, $i-1, 1).$align2 ;
        $i--;
    }   
}


print "$align1\n";
print "$align2\n";


