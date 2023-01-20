# Common commands 

1. `pwd` - This command writes the full pathname of current working directory 

![pwd](./images/pwd.png)  

2. `ls` - This shows you current files in working directory  

![ls](./images/ls.png)   

3. `touch` - This creates a new file  

![touch](./images/touch.png)  

4. `cat` - This shows you the content of a specified file, The tab button can be used as a shortcut method to specify which file you would like to choose 

![cat](./images/cat.png)    

5. `clear` - Can be used to clear the terminal, can also use ctrl + l     

6. `tail` - Used to display last section of file 

![tail](./images/tail.png)   

7. `head` - Used to display first section of file 

![head](./images/head.png)   

8. `which` - Shows you where a command is stored    

![which](./images/which.png)  

9. `info` and `man` - Gives you information on the function of a particular command  

![info_man](./images/info_man.png)   

10. `mkdir` -  Used to create a new directory, Up arrow button can also be used to bring back the previous command     

![mkdir](./images/mkdir.png)   

11. `cd` - This is used to change the directory you are currently working in 

![cd](./images/cd.png)   

 `cd -` - Takes you back to the last directory you were in, alternatively you can copy and past directory past after 'cd' command  

![cd2](./images/cd2.png)    

 12. `rmdir` - Used to remove a directory 

![rmdir](./images/rmdir.png)    

 13. `rm` - Used to remove   

![rm](./images/rm.png) 

 14. `cp` - Used to copy   

![cp](./images/cp.png) 

 15. `mv` - Used to move or rename   

![mv](./images/mv.png) 
![mv2](./images/mv2.png) 

 16. `echo` - This is used to return what you tell it to 

![echo](./images/echo.png)  

 17. Variables are used to assign value to an unknown, "Name" = varible, "Medi" = value
 The "$" sign is used to reference a variable 

![variable](./images/variable.png)

18. `df` - Used to find out information of free space left on the disk 

![df](./images/df.png) 

19. `free` - Shows you the memory details 

![free](./images/free.png)  

20.  `id` - Shows you more information about the logged in user 

![id](./images/id.png)  

 # Flags    
1. `ls -l` - Lists files in directory with more information 

![ls_l](./images/ls_l.png)   

2. `ls -a` - Includes . files in directory list 

![ls_a](./images/ls_a.png)   

3. `ls -la` - Combination of previous flags  

![ls_la](./images/ls_la.png)  

4. `rm -r` - Allows you to remove directories recursively    

![rm_r](./images/rm_r.png)   

5. `mkdir -p` - Used to create multiple directories at once 

![mkdir_p](./images/mkdir_p.png)  

6.  `df -h` - Shows free disk space in human readable form (can also be used with `free`)

![df_h](./images/df_h.png)    

# Linux directories 

`tree` - Presents your directories in levels as a tree (must run `sudo apt-get install tree` first) 

![tree](./images/tree.png) 

`tree / -L 1` - Shows directories in root folder (/) in tree format, increase in number (2, 3 etc) will show subdirectories 

![tree_l](./images/tree_l.png) 

```
1. /bin is linked to usr/bin, this stores binary files -> Binary files are a compiled version of written code
2. /boot directory stores data relating to booting up the system 
3. /media, /mount, /cdrom, /mnt (all similar) are places where you attach your cd rom to your pc and access the files attached to them (mount point)
4. /dev the location of device files (device files are an interface to device drivers e.g. usb, external drive)
5. /etc is where the configuration files are kept (this tweaks and controls how program works) 
6. /home is where users keep specific files and folders 
7. /lib (Library) -> Libaries are a collection of resources used by the computer (group of functions) -> the operating system kernel uses the library when running programs
8. /lost+found is used for system recovery 
9. /opt (optional) used to store add on packages or software that is not tied to the system
10. /proc (process) contains processes (an instance of an application) -> when you run a program a process is generated for it 
11. /root is another folder like /home 
12. /run -> this directory is the mountpoint for tempfs filesystem in the computer's memory -> Temporary data used by processes are kept here 
13. /sbin (system bin) -> Binary files relating to the system are kept here 
14. /snap is where you will find packages relating to snap (alternative way to download packages like apt-get) 
15. /srv (server) is where certain server files are kept e.g. FTP files 
16. /sys (system) is mounted on a virtual file system 
17. /tmp is where temp files and directories are kept on disk -> files and folders get deleted after a reboot on a linux system
18. /usr is where programs and libaries are stored 
19. /var is used by the operating system to write data during the course of its operation 
```