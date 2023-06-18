$x = "cgtagtgtcgt";

print "Value of \$x = $x \n";

$x =~ s/t/u/; #output cguagtgtcgt

print "After the substitution, Value of \$x = $x \n";


$x =~ s/t/u/g; #output cguagugucgu

print "After the substitution, Value of \$x = $x \n";
