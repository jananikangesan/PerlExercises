# Write a perl program to display the number of
# times a given number appear in an array.
# E.g.
# A = [1,2,2,3,4,2]

@A = (1,2,2,3,4,2);

print "Enter the number:";
$number=<STDIN>;

$count=0;
for($i=0;$i<@A ;$i++){
	
	if(@A[$i]==$number){
		$count=$count+1;	
	}		
}
print "number of occurrences of $number in A = $count \n";		

