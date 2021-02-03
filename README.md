# WSL-Management-System
A User Environment to help use and setup the WSL Environment on Windows 10.

**Goal:** Increase accessibilty, cross-plateform capability, usability, and integrate Linux further into Windows. 

**Wiki:** To Be Added<!-- [Link](.) -->
***

## About
#### *What*
This is WSl Management System meant to increase accessibilty, cross-plateform capability, and usability. To do this The ECMS (External Command Management System) allows you to alias a command from one system like Ubuntu and the ECMS will give access to all other systems to use. That way you can use linux commands in powershell or vise versa. Another thing the WSl Management System is cover inconsistencies that the windows system or linux subsystem may have, for example implementing the Snapd command in linux. However, it won't cover all the inconsistencies, but the goal is that it covers enough that it feels like you are working on a truely hybrid system and not a patched in feature on one OS. 

#### *Why*
I love working with both windows and linux. When I heard Windows was including Linux into their OS, I was really excited. However now that I have used it abit; it isnt exactly what I was expecting. Instead of feeling like a hybrid system when enabled, but instead it feels like a tacted on system, less so with WSL2, but still has that tacted on feeling.

However! That won't stop me. WSL has the potential to have this hybrid feel. I will still use VirtalBox for containment and development, but with this system I could extend the use past the user interface.

## Setup
1. Make sure you have the latest version of Windows 10 with all updates.
2. Run the Install File and Follow the Instructions when prompted.

** If you choose partial installation, then the installation will halt and tell you what you need to install, then resume. Otherwise it will automatically the software it needs.

NOTE: Only partial installation is part of the minimal release not the full installation.

**The Software needed before a partial install:**
- *VSCode*
- *WSL2*
- *1 or more Linux Distrobutions*
- *Distros Already Setup before install*
- *Latest Windows Update*

## Usage
### Interaction
NOTE: A Majority of this Program Needs Admin Permissions to run. 

**Usage in the Terminal:**
Once installed both powershell and your distros should have access to the commands listed below.

**Adding New Commands:**
To add a command you need to run the command `WSL-Admin --command add <Git_Link>` where \<Git_Link> is the link to the command repository. If the new command is on you local machine and not Installed you would run the command `WSL-Admin --command add <Path>` where \<Path> is the path to the command's root directory on your local machine.
 
**Creating Commands:**
Unlike Adding a new command, creating on is a bit harder to do. A file named cmd.json needs to be at the top-level of the repository or at the root directory. 

```json
cmd.json

{
    //Details About the Command
    "About": {
        "Name": "Command_Name",
        "Desc": "Short_Description", // One Sentence Description
        "Description": "Long Description", // Longer Description, Very Detailed (Optional)   
        "Author": "Author_Name"
    },
    //Flags are position independant and are prefixed with -- or -, but must be named (Optional)
    "Flags": [
        {
            "Name": "Flag_Name",
            "Description": "Flag_Description",
            "Shortcut": "Flag_Shortcut", // example: -a
            "hasValue": "None" // Can be None, Optional, or Required; Defualts to None
        },
        
    ],
    //Args are position dependant and can be named, has no prefixes (Optional)
    "Args": [
        {
            "Name": "Arg_Name",
            "Position": 0,
            "Description": "Arg_Description",
            "hasValue": "None"
        },
    ],
    // Main file to be called when the command is ran
    "Call": "main.sh" // Needs to be either .sh, .ps1, or .py File
}

```

The *About* section give details about the command. This will help with build the help documentation and alias the command.

The *Flags* section helps define the flags which don't depend on order, that the command accepts and adds to the commands documentation.

The *Args* section helps define the args which depend on order, that the command accepts and adds to the commands documentation.

*Call* is used to determine the main file that is used to run the command.

### Commands
**Core:**
** These Commands are required for primary operations to work.

*WSL-Admin*: The Controller behind this App. Allows you to modify Preferences, Access Source Files, or Manage Commands.
*Powershell*: Runs Command as if it was ran within Powershell.
*CMD*: Runs Command as if it was ran within CMD.
*Linux*: Runs Command as if it was ran within a linux Distro.
*Windows-Store*: Gives access to the windows store through the command line.
*Editor*: Opens a VSCode Window.
*Open*: Opens a Windows Application.
*Explorer*: Creates a way to access and manage Filesystems across Systems.

**Risky:**
** These Commands are not Opt-In at install and are really risky to use. 

*Devices:* Gives access to Device Manager on the windows system.
*Registry:* Gives access to Registry on the windows system.
*System-Settings:* Gives access to Windows/Linux System Settings

**External:**
** Optional Commands are toggable on/off if already installed. These can be installed from Github.

*Project*: Provides the means to quickly access or create projects. That are accessible by either Linux or Windows
*SecureShell*: Gives SSH Access.

***
## Todo
*Minimal:*
1. [ ] Program Assets
   1. [ ] Logo
   2. [ ] Banner
2. [ ] Core Features
   1. [ ] Snapd Capability
   2. [ ] Setup User Interface
   3. [ ] External Command Management System (ECMS) Foundations
   4. [ ] Admin Setup
   5. [ ] Distro Manager Setup
3. [ ] Core Commands
   1. [ ] WSL-Admin
   2. [ ] Powershell
   3. [ ] CMD
   4. [ ] Linux
   5. [ ] Windows-Store
   6. [ ] Editor
   7. [ ] Open
   8. [ ] Explorer
4. [ ] Partial Install
   1. [ ] Install Checking
   2. [ ] Flag Control
   3. [ ] Core Feature Setup
   4. [ ] Install Executable

*Additions:*

1. [ ] Full Install
   1. [ ] Automatic Distro Install
   2. [ ] WSL2 Enable
   3. [ ] Distro Setup
2. [ ] Risky Commands
   1. [ ] Devices
   2. [ ] Registry
   3. [ ] System-Settings
3. [ ] Windows Permissions Management
4. [ ] Operations
   1. [ ] Bat to Exe Build
   2. [ ] Release Versioning
   3. [ ] Pip Build
   4. [ ] Branch Management
   5. [ ] Issue Management
   6. [ ] Pull Management
5. [ ] External Commands
   1. [ ] Project
   2. [ ] SecureShell
   3. [ ] VirtualBox
7. [ ] ECMS Additions
   1. [ ] System Reqiurements
   2. [ ] Application Requirements
   3. [ ] Command Requirements
   4. [ ] Command Creation Libraries
   5. [ ] Command Control
8. [ ] Runtime User Interface