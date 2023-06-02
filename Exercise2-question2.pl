# Declare a package as FirstModule
# – Declare a variable $age as our and assign the value 42
# – Declare another package as SecondModule
# – Declare a variable $ageword as our and assign the value "Fourty-Two"
# – Declare a subroutine First()
# – Inside the subroutine, declare two variables with local and my keyword as below:local $age = 52;my $ageword ="Fifty-two";
# – Call another subroutine as Result()
# – Print the values of $age and $ageword inside this function.
# – End the subroutine
# – Declare the subroutine Result()
# – Again print the values of $age and $ageword
# – End the subroutine
# – Call the function First()
# – Print the Package First and Package Second as below:print "Package First : $FirstModule::age\n";print "Package Second : $SecondModule::ageword\n";


# This is FirstModule package
package FirstModule;

our $age=42;

# This is SecondModule package
package SecondModule;

our $ageword="Fourty-Two";

##subroutine First()
sub First{
	local $age =52;
	my $ageword ="Fifty-two";
	
	Result();
	
	print "age: $age\n";
	print "ageword : $ageword\n";
}

##subroutine Result()

sub Result{
	print "age: $age\n";
	print "ageword : $ageword\n";
}


First();

print "Package First : $FirstModule::age\n";
print "Package Second : $SecondModule::ageword\n";