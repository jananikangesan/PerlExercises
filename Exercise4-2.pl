# Read the marks array from user.
# Find the average.
# Calculate the grade.
# average >= 70 --> A
# average >= 60 --> B
# average >= 50 --> C
# average >= 35 --> Pass

print "how many marks are you going to enter? ";
$number=<STDIN>;

@marks;

for($i=0;$i<$number;$i++){
	$input=<STDIN>;
	
	push(@marks,$input);	
}

$total=0;

#calculating total marks
foreach $data (@marks){
	$total=$total+$data;
}

#calculating the average marks
$average=$total/$number;

print "Average:$average\n";

if($average>=70){
	print "Grade: A";
}elsif($average>=60){
	print "Grade: B";
}elsif($average>=50){
	print "Grade: C";
}else{
	print "Grade: Pass";
}