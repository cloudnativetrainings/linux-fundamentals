# Bash Scripts

In this lab you will learn how to write your own bash scripts.

## Create your own bash script

Create a file called `my-bash-script.sh` via vi with the following content
>#!/bin/bash
>
>echo $(date) >> my-bash-script-file.txt

Or you can use `cat` command:

```bash
/bin/cat <<EOF > my-bash-script.sh
#!/bin/bash

echo \$(date) >> my-bash-script-file.txt
EOF
```

```bash
# try to run the bash script (which will fail due to it is not executable yet)
./my-bash-script.sh

# make the bash script executable
ls -alh my-bash-script.sh
chmod 700 my-bash-script.sh
ls -alh my-bash-script.sh

# run the bash script
./my-bash-script.sh

# verify the bash script worked out
cat my-bash-script-file.txt
```
