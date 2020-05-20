# Web stack debugging #3

## Some line commands I used:
- ps auxf (to see the pid of the processes)
- strace -o output.out -p <www-data pid> (to trace the www-data process and save the insights in output.out file)
- cat output.out (to check the results, looking for errors)
- grep -rn '/var' -e 'error_line' (to find the location of the error. In this case, a speling error)
- sed -i 's/old_word/new_ord/g' <path> (to fix the spelling error)

For this project, the solution was automated with a puppet file
