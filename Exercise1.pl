#####1.Assign values to variables $x and $y and print them out######

$x=5;
$y="Computer Science";

print "x = $x\n";
print "y = $y\n\n\n";

print "************************\n\n";

######2. my $str = "ACGAGAGCGTGT";####

my $str = "ACGAGAGCGTGT";

# print the length of the str
$str_length = length($str);
print "length of the str : $str_length\n\n";

# print the string str
print "string : $str\n\n";

# print the string str in lower case letters
$lowerCase_str = lc ($str);
print "lowerCase of str: $lowerCase_str\n\n";

# print the string str in upper case letters
$upperCase_str= uc ($str);
print "upperCase of str: $upperCase_str\n\n";

# print the string str with only the first letter is lower case
$fistletter_lower = lcfirst($str);
print "first letter of str is lowerCase : $fistletter_lower\n\n";

# print the string str with only the first lettr is upper case
$fistletter_upper = ucfirst($lowerCase_str);
print "first letter of str is UpperCase : $fistletter_upper\n\n";

# Remove last characters of string and print
$lastCharacter = chop($str);
print "after removing the last character of str : $str\n\n";
print "Removed Character is : $lastCharacter\n\n";

