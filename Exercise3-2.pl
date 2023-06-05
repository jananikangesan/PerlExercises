# Write a perl program to display the number of
# times a given number appear in an array.
# E.g.
# A = [1,2,2,3,4,2]

@A = (1,2,2,3,4,2);

for($i=0;$i<@A ;$i++){
	
	$count=1;
	
	if(@A[$i]!=-1){
		
		for($j=$i+1;$j<@A;$j++){
		
			if(@A[$i]==@A[$j]){
				$count=$count+1;
				@A[$j]=-1;
			}
		}
		print "number of occurrences of @A[$i] in A = $count \n";		
	}	
	
}

