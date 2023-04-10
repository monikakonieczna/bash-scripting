<h1>
  Practice Shell Scripting for Bash <a href="https://www.gnu.org/software/bash/"> <img width="140" alt="Bash Logo" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Gnu-bash-logo.svg/2560px-Gnu-bash-logo.svg.png" />
</h1>

> **Note**
>
> +  **<a href="https://www.gnu.org/software/bash/">Bash</a>** is the GNU Project's shell—the Bourne Again SHell. 
>
## Bash features
### Variables
#### To create a variable: assign a value. Don't use whitespace around =
```
directory=reports
```
#### Values containing spaces: use quotes. Use double quotes - keep meaning of dollar sign intact.
```
filenames="notes.txt picture.jpg movie.mov"
```
#### To retrieve the value, prefix with $
```
echo $directory
```
#### Use braces to tell where your variable ends.
```
${variable}_report
```
> **Note**
> Shell variables have no data type. They simply store strings.
> Naming: use letters, numbers, underscore. First letter: a letter or underscore. Case-sensitive.
> Predefined variables are uppercase. PATH, HOME, SECONDS, IFS, etc.
### Taking arguments
#### Script can accept input from arguments
```
create_report.sh A5 myfolder
```
#### Use -- (end of options) - If your input is unpredictable you can run into problems when your variable contains a string which is starting with a -
```
grep -- "user_input"
```
> **Note**
> Some commands don't support this -
> use printf instead of echo 
```
printf "I will delete this file: %s\n" "$file_to_delete"
```
### Debugging
#### Use -x to show each line with variable values as the script runs
```
#!/bin/bash -x
```
## Calling your script
### If the script is not on your PATH: include the directory
```
./myscript.sh
```
### If it is on your PATH: call it like a regular command
```
myscript.sh
```
## Useful Commands
### Making your scripts executable
#### Executable for owner only
```
chmod u+x filename
```
#### Executable for everyone
```
chmod a+x filename
```
#### Remove executable permission
```
chmod a-x filename
```
