my %hash = (
'MyVehicle' => 'Car',
'Model' => 1234,
'Speed' => 60.7
);

foreach my $key (keys %hash)
{
	$value = $hash{$key};
	print "Value of $key is $value\n";
}

# Array
@data = ('GEEKS', 'FOR', 'GEEKS');
 
# foreach loop
foreach $word (@data)
{
    print "$word\n";
}