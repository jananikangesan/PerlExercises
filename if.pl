$a = 100;
# check the boolean condition using if statement
if( $a  ==  20 ) {
   # if condition is true then print the following
   printf "a has a value which is 20\n";
} elsif( $a ==  30 ) {
   # if condition is true then print the following
   printf "a has a value which is 30\n";
} else {
   # if none of the above conditions is true
   printf "a has a value which is $a\n";
}

 
$b = 20;
# check the boolean condition using unless statement
unless( $b < 20 ) {
   # if condition is false then print the following
   printf "b is not less than 20\n";
}
print "value of a is : $b\n";

$c = "";
# check the boolean condition using unless statement
unless ( $c ) {
   # if condition is false then print the following
   printf "c has a false value\n";
}
print "value of a is : $c\n";