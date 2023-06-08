@array=('Sainath',23,'Krishna',24,'Shruthi',25);
print "@array";
print"\n\n";

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";


#creating hashes
#method1

%data1 = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

#method2
%data2 = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

#method3

%data3 = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

# Extracting Slices
%data4 = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);

@array = @data4{-JohnPaul, -Lisa};

print "Array : @array\n";

# Extracting Keys and Values

%data5 = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

@names = keys %data5;

print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";


%data5 = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

@ages = values %data5;

print "$ages[0]\n";
print "$ages[1]\n";
print "$ages[2]\n";


