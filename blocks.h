//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	/*{" \x01\02 ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	10,		0},
	{" \x03\x04", "/exec/Battery.sh", 20, 0},
	{" \x05\x06", "/exec/ReadVolume.sh", 0, 10},

	{" \x07\x08", "date '+%I:%M %p'",					5,		0},*/

	{"   \x01\x02", "/exec/Battery.sh", 20, 0},
	{" \x03\x04", "/exec/ReadVolume.sh", 0, 10},
	{" \x05\x06 ", "date '+%I:%M %p'",					5,		0},
	{" \x07\x08", "date '+%m/%d/%Y'", 120, 0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "\0";
static unsigned int delimLen = 0;
