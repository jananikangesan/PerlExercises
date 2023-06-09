# Write a perl program to receive input as octal number from user and convert it into binary 
# using an array which contains the binary representation of each octal number ?
# Eg: A[0] = ‘000’
	# A[1] = ‘001’ ….
	
@binary_representation=("000","001","010","011","100","101","110",111);

print "Enter the octal number:";
$number=<STDIN>;
$binary="";

print "octal number of $number = ";

 while($number>0){

	 $reminder=$number % 10;
	 $number=int($number / 10);
	 
	 $binary=$binary_representation[$reminder].$binary;
	
	 
 }
 print "$binary \n";