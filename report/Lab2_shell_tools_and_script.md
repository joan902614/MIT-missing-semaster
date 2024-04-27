# Lab2 shell tools and script
## Q
1. Read ```man l```s and write an ls command that lists files in the following manner
	* Includes all files, including hidden files
	* Sizes are listed in human readable format (e.g. 454M instead of 454279954)
	*	Files are ordered by recency
	*	Output is colorized
	A sample output would look like this
	``` 
	-rw-r--r--   1 user group 1.1M Jan 14 09:53 baz
 	drwxr-xr-x   5 user group  160 Jan 14 09:53 .
  -rw-r--r--   1 user group  514 Jan 14 06:42 bar
  -rw-r--r--   1 user group 106M Jan 13 12:12 foo
  drwx------+ 47 user group 1.5K Jan 12 18:08 ..
	```
2.Write bash functions ```marco``` and ```polo``` that do the following. 
	* Whenever execute ```marco``` the current working directory should be saved in some manner
	* when execute ```polo```, no matter what directory you are in, ```polo``` should cd you back to the directory where executed ```marco```
	* For ease of debugging you can write the code in a file ```marco.sh``` and (re)load the definitions to your shell by executing ```source marco.sh``` 
3. 
4. 
5. 

## A
1. ```ls -l -a -h -t --color```
