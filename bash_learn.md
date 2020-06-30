### Bash Goodies

#### Expansion  
  ##### Path Expansion  
  **`echo *`** shows all files/directories in a current dir   
  `ls .[!.]*` shows only hiden files in a directory.   
  ##### Tilde Expansion  
  ** * ~ * ** - expands into home directory of a named user, or if no user is named, into home dir of current user.  
  ##### Arithmetic Expansion  
  ***$((expression))*** - this will be used as a calc so $(( 2 + 2))  
  Double Parens are used for Arithmetic expression. We can nest subexpressions using single parens as:  
  ***`echo $(($((5 \*\* 2) \* 3))`***   
   ***Operators*** +, -, \*, /, %, \*\* (exponentiantion)  
  #####  Brace Expansion
  Can create multiple text strings from a pattern containing braces:  
  ```
  echo {01..10}
  slanjo@~:$ echo {01..10}
  01 02 03 04 05 06 07 08 09 10
  ```
  #### Parameter Expansion  
  **`echo $http_proxy` expands to the value of the variable  
  ** We can use $ combined with parens for ** Command Expansion **  like so:  
  ```
  slanjo@~:$ ls -ahl $(which ls)
  -rwxr-xr-x 1 root root 136K Feb 28  2019 /usr/bin/ls
  ```  
  #### Quoting
   ***Double Quoting*** all special characters within double quotes are suppressed except for the back-quotes(`), $, and \ (backslash)  
  **this means word-splitting, pathname expansion, tilde expansion, and brace expansion are suppressed, but parameter expansion  
  arithmetic expansion, and command substitution are still carried out. 
  ***Single Quoting*** suppresses all expansion  
  

