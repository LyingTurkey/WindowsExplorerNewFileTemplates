## ***File Explorer Context Menu Extension Toolkit***



This toolkit injects custom object-creation capabilities into the native Windows File Explorer "**New**" context menu. By linking system **file extensions** (***.js,*** <i>**.py,** <b>.reg,</b> etc.</i>) directly to custom Program ID architectures, users can instantly generate specific files with pre-populated boilerplate configurations **or** clean 0-byte instances (*empty files*) straight from the system toolbar.



###### **AUTOMATED DEPLOYMENT**



The files inside the "**ShellNew Templates**" folder are templates used by the

system. You can automate this deployment entirely by right-clicking

"**install\_shellnew\_templates.bat**" and selecting "**Run as administrator**".

The automation engine will dynamically locate your local environment path,

force-verify the destination directory, and move the asset payloads

automatically (*note that if you want to keep these for any reason, you must copy the "**ShellNew Templates**" folder elsewhere <b>BEFORE</b> running the batch script*).



To completely revert changes and wipe the templates out of your system,

right-click "**remove\_shellnew\_templates.bat**" and run it as an administrator.



###### **MANUAL DEPLOYMENT**



If you prefer a manual deployment matrix, you must cut and paste

(*Ctrl + A, Ctrl + X*) all templates from the "**ShellNew Templates**" folder to:

**C:\\Windows\\ShellNew** (alternatively, just select the templates that correspond to the seperate registries you added and move those instead).



(*Note: This system directory may not exist on clean Windows installations.*

*If it is missing, manually initialize a new folder named "**ShellNew**" directly*

*inside your **C:\\Windows\\** directory using administrative privileges.*)



###### **GRANULAR REGISTRY ISOLATION**



If you are only planning on adding specific templates to your "**New**" button

in the File Explorer, navigate to either the "**seperate registry (templates included)**"

or "**seperate registry (no templates)**" folder.



Locate the corresponding individual registry entry you want to add, and

only install that targeted **.reg** file.



###### **NON-TEMPLATE/ZERO-BYTE (CLEAN FILE) DEPLOYMENTS**



If you instead want your new files to initialize completely blank without

boilerplate strings, DO NOT move any ShellNew Templates to C:\\Windows\\ShellNew.



If this is your preferred method, you are completely free to delete the entire

"**ShellNew Templates**" folder. Just ensure you click the

"**add\_all\_as\_empty\_files.reg**" file **INSTEAD** of the "**add\_all\_with\_templates.reg**".



To completely wipe all registry entries for both setups, run the

"**remove\_all.reg**" script.

