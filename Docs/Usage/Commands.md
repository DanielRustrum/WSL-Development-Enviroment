# Commands

## Installing Commands
To add a command you need to run the command `MP-Admin -c add <Git_Link or HTTPS_Link>` where \<Git_Link> is the link to the command repository. If the new command is on you local machine and not Installed you would run the command `MP-Admin -c add <Path>` where \<Path> is the path to the command's root directory on your local machine.

## Command Syntax
Depending if you are using Powershell or Bash, the syntax that you use to interact with this program changes to fit the shell you are using best.

NOTE: The word between \<> Specify what goes in that space. For Example: -\<Letter> can be -s or -a. The representation for an implict space is _.

|Symbol|Powershell|Linux|Example|
| ------------- |:-------------:| -----:|-----:|
|Single Letter|\\\<Letter>|-\<Letter>|\a,-a|
|Fused Letter|\\\<Letters>|-\<Letters>|\as,-as|
|Flag|-\<Flag Name>|--\<Flag Name>| -silent, --silent|
|Label|:\<Label Name>|:\<Label Name>| -flag:label, --flag:label|
|Declared Value|<Argument\Flag Name>_\<Value Name>|<Argument\Flag Name>=\<Value Name>| -flag=value, --flag=value|
|Undeclared Value|\<Value Name>|\<Value Name>| value|

## Types
Since powershell uses a type system I would like to bring this into bash in order to increase the bash/powershell cross compatibility.

Primitive Types:<br>
** Primitive Types can be provided in a dynamically sized array by putting [] after the types. <br>

- Boolean: A true or false value.
- Number: A signed 32 bit integer
- Object: Structured Data consisting of other types.
- String: An Array of characters that are between "" instead of a list.
- Dynamic: Any value can be provided

## Command Snippets
It runs the macros defined in `MP-Admin -c macro`. To run it type `Run-Macro` followed by the the macro name and it's arguments. This is also seperate from CES.

## Next Article