# Perl Program to illustrate the Logical Operators
 
# Operands
$a = true;
$b = false;
 
# AND operator
$result = $a and $b;
print "AND Operator: ", $result,"\n";
  
# OR operator
$result = $a or $b;
print "OR Operator: ", $result,"\n";
  
# NOT operator
$d = 0;
$result = not($d);
print "NOT Operator: ", $result;