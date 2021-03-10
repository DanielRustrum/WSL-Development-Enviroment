# The Admin Command
The purpose of the Admin Command is The Controller behind this App. Allows you to modify Preferences, Access Source Files, or Manage the program. Only the System Admin has access to this command. `MP-Admin` is the nam of the command.

The Admin Command is seperate from the Command Execution System (CES). It is closer to the core of the program than the modeules in WSL-Windows Module System (WWMS). That means that this command has access to those modules and allows for modification to those modules.

Command Syntax:
After the execution word `MP-Admin` there is a statement that declare what area is being affective like -c for commands.

Startments:<br>
Commands(-c):
- new []: Allows you to create a new command.
- add []: Allows you to add a command using git.
- remove []: Allows you to remove a command with the exception of the admin command.
- macro []: Creates/Defines a macro that can be ran later... It can run multiple commands.

Modules(-m):
- enable []: Allows you to enable a disabled module
- disable []: Allows you to disable a enabled module.
- config []: Allows you to change the configs for a specifed module.

System(-s):
- update []: Updates the program and any additions it may have.
- settings []: Allows you to change the settings.
- source []: Access all source files including modules.
- clean []: Gets rid of any persistent data created by the program. Restore the program to a nearly-default state.

## Next Article