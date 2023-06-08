# Get the single word from user.
# You have to print the age ,who can be ableto read the word.
# If the word length is ,
# <=3 age : 5
# <=4 age : 6
# <=6 age : 8
# <=10 age : 9
# else age: 12

print "Enter the word:";
$word=<STDIN>;

$world_length=length($word);

if($world_length<=3){
	print "age: 5";
}elsif($world_length<=4){
	print "age: 6";
}elsif($world_length<=6){
	print "age: 8";
}elsif($world_length<=10){
	print "age: 9";
}else{
	print "age: 12";
}