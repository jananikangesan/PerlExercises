my %color_of = (
apple => "red",
orange => "orange",
grape => "purple",
);
my @fruits = keys %color_of;

for my $fruit (@fruits) {
print "The color of '$fruit' is $color_of{$fruit}\n";
}

for my $fruit (keys %color_of) {
print "The color of '$fruit' is $color_of{$fruit}\n";
}