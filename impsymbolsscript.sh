Exit Codes

Every command and script return some value after execution, which indicates that whether it is successfully executed or not. This return value is called exit code or status code.

we can find exit code by using "$?"

zero means command/script executed successfully.
non-zero means command/script not executed successfully.

echo "Hello Friends"
Hello Friends

echo "$?"
0

Eg: ./impsymbolscript.sh learning linux is very easy
$# -> Number of Arguments
$0 -> Script Name (./impsymbolscript.sh)
$1 -> 1st Argument(learning)
$2 -> 2nd Argument(linux)
$3 -> 3rd Argument(is)
$4 -> 4th Argument(very)
$5 -> 5th Argument(easy)
$* -> Total Arguments(learning Linux is very easy)
$@ -> All Arguments(learning Linux is very easy)
$? -> Represents exit code of previously executed command or script 
