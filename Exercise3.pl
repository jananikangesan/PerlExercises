#There are 8 integers stored in an array. They are: 25, 78, 43, 58, 90, 87, 5, 98. 
#Write a Perl script to separate those integers into odd and even numbers in two separate arrays.


@numbers=(25, 78, 43, 58, 90, 87, 5, 98);

@odd_number;
@even_number;

for ($i;$i<@numbers;$i++){
	$value=@numbers[$i]%2;
	if($value==0){
		push(@even_number, (@numbers[$i]));
	}else{
		push(@odd_number, (@numbers[$i]));
	}
}

# Printing Array elements
print "Odd number Array: @odd_number \n";

# Printing Array elements
print "Even number Array: @even_number \n";