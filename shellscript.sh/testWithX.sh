function testArg()
{
	./test.sh $1
	echo '-----------------'
}

testArg -5
testArg 5
testArg hallo
testArg test.sh

