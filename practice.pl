#subroutine
# Function definition
sub Hello {
   print "Hello, World!\n";
}

# Function call
Hello();

####my###########

my $age =29;

if (1<2){
    print "Age = $age\n";    
}

print "Age = $age\n";


##########local###########
$var = 5;

{
local $var = 3;
print "local,\$var = $var \n";
}

print "global,\$var = $var \n";

#####package#############

# This is main package
$i = 1; 
print "Package name : " , __PACKAGE__ , " $i\n"; 

package Foo;
# This is Foo package
$i = 10; 
print "Package name : " , __PACKAGE__ , " $i\n"; 

package main;
# This is again main package
$i = 100; 
print "Package name : " , __PACKAGE__ , " $i\n"; 
print "Package name : " , __PACKAGE__ ,  " $Foo::i\n"; 

1;

#####################use strict########

use strict;
my $s = "Hello!\n";
print $s;

#####################use warnings########

use strict;
use warnings;
my $t = "apple!\n";
print $t;


#######say() function#########
# use 5.010;  
# say "Welcome to JavaTpoint!!";  
# say "This is our Perl tutorial!!";  


##########undef##############

my $d1 = 10;
my @d2 = (1,2);

print "1 - Value of Scalar is $d1\n";
print "1 - Value of Array is @d2\n";

undef( $d1);
undef( @d2 );

print "2 - Value of Scalar is $d1\n";
print "2 - Value of Array is @d2\n";

############Perl Input from User using <STDIN>#################

print "Enter your Name:";  
my $name = <STDIN>;  
print "Welcome $name at JavaTpoint.";  