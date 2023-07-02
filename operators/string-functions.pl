$string = "computer science\n";
 
# Calling the chomp() function
$A  = chomp($string);
 
# Printing the chopped string and removed trailing newline character
print "Chopped String is : $string\n";
print "Number of Characters removed : $A\n";


  
# Calling substr() to find string  without passing length
$sub_string1 = substr($string, 4);
  
# Printing the substring
print "Substring 1 : $sub_string1\n";
  
# Calling substr() to find the substring of a fixed length
$sub_string2 = substr($string, 4, 5);
  
# Printing the substring
print "Substring 2 : $sub_string2\n\n\n ";



# Here character is comma(, )
$str = 'Welcome, to, Jaffna';
  
# using split() function
@spl = split(', ', $str);
  
# displaying result using foreach loop
foreach $i (@spl) 
{
    print "$i\n";
}


