# Write a perl program for calculating the average of 3 numbers getting from the user


########method1##########
print "Enter the number1:";  
my $number1 = <STDIN>;  

print "Enter the number2:";  
my $number2 = <STDIN>; 

print "Enter the number3:";  
my $number3 = <>; 


$average=($number1+$number2+$number3)/3;
print "average of 3 numbers is $average\n\n\n";


#######method2 using subroutine#################
sub Average {
   $average=($_[0]+$_[1]+$_[2])/3;
   return $average;
}
print "n1:";  
my $n1 = <STDIN>;  

print "n2:";  
my $n2 = <STDIN>; 

print "n3:";  
my $n3 = <>; 

$answer=Average($n1,$n2,$n3);
print "average is $answer\n\n\n";
