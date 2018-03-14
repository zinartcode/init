# init

# Introduction
Slash16 is a network of people who are passionate about system and network administration
and/or operations development (DevOps).
Our goal is also to enable a flow of knowledge across our members by setting up
common projects, conferences or via any others type of activity that makes it possible to
share both knowledge and professional experience.
That’s why we decided to treat you with two subjects:
• An initiation subject (This one).
• A complete infrastructure creation subject, roger-skyline-2.
With that, you will have access, on your e-learning platform, to a bunch of videos
that will help you understand the essential notions you’re going to need.

# Goals
This first project, init, will give you the opportunity to discover system and network
basic commands, many of the services used on a server machine, as well as a few ideas of
scripts that can be useful for SysAdmins on a daily basis.

# General instructions
You must use terminal commands only to solve all the exercices in this subject.
There are three types of questions in this project. You can identify the type of answer
expected thanks to a color code:

* In blue : a command

* In green : a command output

* In red : a deduction, written in your own words

• Create a folder for each part of this subject at the root of your repository. These
folders should be named network, system and scripts. Write your answers in a
file named after the number of the question, over two digits. For instance : The
answer to the question 01 of the network part should be in the network/01 file.
• Hand in your scripts as executable

## V.2 Network
1. Get the list of the network interfaces of the machine without displaying any detail
for these interfaces. Only the list of names.
2. Identify the IP address of the Ethernet interface
3. Identify the MAC address of the Wi-Fi card
4. Identifiy the default gateway in the routing table
5. Identify the IP address of the DNS that responds to the following url: slash16.org
6. Get the complete path of the file that contains the IP address of the DNS server
you’re using
7. Query an external DNS server on the slash16.org domain name (ie. : google
8.8.8.8)
8. Find the provider of slash16.org
9. Find the external IP of 42.fr
10. Identify the network devices between your computer and the slash16.org domain
11. Use the output of the previous command to find the name and IP address of the
device that makes the link between you (local network) and the outside world
12. Check that the server with the 10.51.1.253 IP address is reachable from your
computer.
13. Figure out the server type.
14. Use the Reverse DNS to find out the name of the server linked to the 10.51.1.81
IP address
15. What file contains the local DNS entries?
16. Make the 46.19.122.85 address reroute to intra.42.fr

## V.3 System
1. In what file can you find the installed version of your Debian?
2. What command can you use to rename your system?
3. What file has to be modified to make it permanent?
4. What command gives you the time since your system was last booted?
5. Name the command that determines the state of the SSH service.
6. Name the command that reboots the SSH service.
7. Figure out the PID of the SSHD service.
8. What file contains the RSA keys that are authorized to connect via SSH?
9. What command lets you know who is connected to the System?
10. Name the command that lists the partition tables of external devices?
11. Name the command that displays the available space left on the system?
12. Figure out the exact size of each folder of /var
13. Name the command that find currently running processes
14. Run the ‘tail -f /var/log/syslog‘ command in background
15. Find the command that kills the background command’s process
16. Find the service which makes it possible to run specific tasks following a regular
schedule
17. Find the command which gives the list of firewall rules
18. With the previous command, authorize only IP addresses from 10.0.0.0/8 to connect
to your system
19. With the previous command, forbid all others

## V.4 Scripting
1. Write a script which displays only the login, UID and Path of each entry of the
/etc/passwd file.
2. Write a script which updates all the package sources, then all the packages, and then
logs everything in a file named /var/log/update_script.log. Create a scheduled
task for this script, once per week at 4 AM.
3. Write a script which displays the list of files from the folder given as parameter,
sorted by size.
4. Write a script which monitors the modifications made to the /etc/crontab file and
sends an e-mail to root if the file is modified. Create a scheduled task to run this
script everyday at midnight.
man md5sum
5. Write a script which displays 42.
