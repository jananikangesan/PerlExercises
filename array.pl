@ages = (2, 3, 4);
@names = ("Raj", "John", "Kumar");

print "\$ages[0] = $ages[0]\n";
print "\$names[2] = $names[2]\n";

@days= qw(mon tue wed thu fri sat sun);
@num = qw/1 2 3 4/;

print "\$days[4] = $days[4]\n";
print "\$num[2] = $num[2]\n";

my @year;
$year[0] = 2009;
$year[1] = 2010;

print "\$year[1] = $year[1]\n";


@array = (1,2,3);
#Explicit scalar context using keyword scalar
print "Size: ",scalar @array,"\n";

#Implicit Scalar Context
$size = @array;
print "Size: ",$size,"\n";