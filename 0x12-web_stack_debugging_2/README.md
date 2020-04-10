Web stack debugging #2

Run as a privileged user, meaning that the user also has the ability to perform tasks that the root user can do

it’s a good practice not to run your web servers as root (which is the default for most configurations) and instead run the process as the less privileged nginx user instead.
