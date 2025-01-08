1. # Navigation and Filesystem (20 commands)
	# Navigation Commands (10):
	cd : # Change directory
	pwd : # Print working directory
	ls : # List files and directories
	pushd : # Store directory for later retrieval
	popd : # Retrieve stored directory
	dirs : # Display list of stored directories
	cd ~ : # Go to home directory
	cd - : # Go back to previous directory
	cd .. : # Go up one directory level
	 cd / : # Go to root directory

	# Filesystem Commands (10):
	mkdir : # Make directory
	rmdir : # Remove directory (must be empty)
	rm : # Remove file or directory (use with caution)
	cp : # Copy file or directory
	mv : # Move or rename file or directory
	ln : # Create link (symbolic or hard)
	touch : # Create empty file or update timestamp
	find : # Search for files based on criteria
	locate : # Find files by name (uses database)
	xargs : # Execute command on files found by find or locate
	
2. System Information (15 commands)
	Hardware Information (5):
	1. uname -a : #Display kernel version and architecture
	2. lscpu : #Show CPU information (architecture, number of CPUs, etc.)
	3. lsblk : #List block devices (disks, partitions, etc.)
	4. lspci : #Display PCI devices (hardware components)
	5. lsusb : #List USB devices
	System Information (5):
	1. hostname : #Display hostname
	2. domainname : #Display domain name
	3. uptime : #Show system uptime
	4. whoami : #Display current username
	5. users : #List users currently logged in
	Software Information (5):
	1. lsb_release -a : #Display Linux distribution information
	2. dpkg --list : #List installed packages (Debian-based systems)
	3. rpm -qa : #List installed packages (RPM-based systems)
	4. yum list installed : #List installed packages (RPM-based systems with yum)
	5. apt list --installed : #List installed packages (Debian-based systems with apt)
	
3. User Management (10 commands)
	User Creation and Deletion (3):
	1. useradd : #Create a new user account
		 useradd username
	2. userdel : #Delete a user account
		 userdel username
	3. usermod : #Modify a user account
		 usermod -c "Full Name" username (change comment field)
	User Password Management (3):
	1. passwd : #Change a user's password
		 passwd username
	2. chage : #Change password aging information
		 chage -M 90 username (set max days to 90)
	3. gpasswd : #Change group password
		 gpasswd groupname
	User Group Management (2):
	1. groupadd : #Create a new group
		 groupadd groupname
	2. groupdel : #Delete a group
		 groupdel groupname
	User Information (2):
	1. id : #Display user ID information
		 id username
	2. finger : #Display user information
		 finger username
	
4. Process Management (15 commands)
	1. ps: #Display running processes.
		 Example: #ps aux (display all processes)
	2. top: #Display real-time process activity.
		 Example: #top (display top processes)
	3. htop: #Interactive process viewer.
		 Example: #htop (display interactive process viewer)
	4. kill: #Terminate a process.
		 Example: #kill 1234 (terminate process with PID 1234)
	5. killall: #Terminate processes by name.
		 Example: #killall firefox (terminate all firefox processes)
	6. pkill: #Terminate processes by pattern.
		 Example: #pkill firefox (terminate all processes containing "firefox")
	7. pgrep: #Search for processes by pattern.
		 Example: #pgrep firefox (search for processes containing "firefox")
	8. nice: #Run a process with modified priority.
		 Example: #nice -n 10 command (run command with low priority)
	9. renice: #Modify priority of running process.
		 Example: #renice 10 1234 (modify priority of process with PID 1234)
	10. nohup: #Run a process immune to hangups.
		 Example: #nohup command & (run command in background, immune to hangups)
	11. disown: #Remove job from shell's job control.
		 Example: #disown %1 (remove job 1 from shell's job control)
	12. jobs: #Display shell's job control list.
		 Example: #jobs (display shell's job control list)
	13. fg: #Bring job to foreground.
		 Example: #fg %1 (bring job 1 to foreground)
	14. bg: #Send job to background.
		 Example: #bg %1 (send job 1 to background)
	15. wait: #Wait for process to finish.
		 Example: #wait 1234 (wait for process with PID 1234 to finish)
	
5. File Permissions (10 commands)
	1. chmod -R: #Recursively change permissions for directories and subdirectories.
		 Example: #chmod -R 755 directory (recursively set permissions to 755 for directory and subdirectories)
	2. chmod --reference: #Change permissions based on reference file.
		 Example: #chmod --reference=file1 file2 (change permissions of file2 to match file1)
	3. chown -R: #Recursively change ownership for directories and subdirectories.
		 Example: #chown -R user:group directory (recursively change ownership to user:group for directory and subdirectories)
	4. chgrp -R: #Recursively change group ownership for directories and subdirectories.
		 Example: #chgrp -R group directory (recursively change group ownership to group for directory and subdirectories)
	5. setfacl: #Set access control lists (ACLs) for files and directories.
		 Example: #setfacl -m u:user:rwx file.txt (set ACL for user to have rwx permissions on file.txt)
	6. getfacl: #Get access control lists (ACLs) for files and directories.
		 Example: #getfacl file.txt (display ACLs for file.txt)
	7. chmod +t: #Add sticky bit permission.
		 Example: #chmod +t directory (add sticky bit permission to directory)
	8. chmod -t: #Remove sticky bit permission.
		 Example: #chmod -t directory (remove sticky bit permission from directory)
	9. chmod +s: #Add setuid permission.
		 Example: #chmod +s file.txt (add setuid permission to file.txt)
	10. chmod -s: #Remove setuid permission.
		 Example: #chmod -s file.txt (remove setuid permission from file.txt)
	
6. Text Processing (20 commands)
	[23:18, 07/01/2025] ㅤ : #1. cat: #Display file contents.
		 Example: #cat file.txt (display contents of file.txt)
	2. echo: #Print text to screen.
		 Example: #echo "Hello World" (print "Hello World" to screen)
	3. grep: #Search for patterns in text.
		 Example: #grep "pattern" file.txt (search for "pattern" in file.txt)
	4. cut: #Extract columns from text.
		 Example: #cut -d"," -f1 file.csv (extract first column from file.csv)
	5. sort: #Sort text alphabetically or numerically.
		 Example: #sort file.txt (sort file.txt alphabetically)
	6. uniq: #Remove duplicate lines from text.
		 Example: #uniq file.txt (remove duplicates from file.txt)
	7. wc: #Count words, lines, or characters in text.
		 Example: #wc -w file.txt (count words in file.txt)
	8. tr: #Translate characters in text.
		 Example: #tr "a-z" "A-Z" < file.txt (convert file.txt to uppercase)
	9. sed: #Stream editor for filtering and transforming text.
		 Example: #sed "s/old/new/g" file.txt (replace "old" with "new" in file.txt)
	10. awk: #Pattern scanning and processing language.
		 Example: #awk '{print $1}' file.txt (print first column of file.txt)
	11. paste: #Merge lines of multiple files.
		 Example: #paste file1.txt file2.txt (merge lines of file1.txt and file2.txt)
	12. join: #Join lines of two files based on common field.
		 Example: #join file1.txt file2.txt (join lines of file1.txt and file2.txt)
	13. comm: #Compare two sorted files line by line.
		 Example: #comm file1.txt file2.txt (compare file1.txt and file2.txt)
	14. diff: #Display differences between two files.
	15. head: #Display first lines of a file.
		 Example: #head -n 10 file.txt (display first 10 lines of file.txt)
	16. tail: #Display last lines of a file.
		 Example: #tail -n 10 file.txt (display last 10 lines of file.txt)
	17. rev: #Reverse order of lines in a file.
		 Example: #rev file.txt (reverse order of lines in file.txt)
	18. tac: #Concatenate files in reverse order.
		 Example: #tac file.txt (concatenate file.txt in reverse order)
	19. fmt: #Format text to specified width.
		 Example: #fmt -w 80 file.txt (format file.txt to 80-character width)
	20. pr: #Format text for printing.
		 Example: #pr -o 5 -l 60 file.txt (format file.txt for printing with 5-character offset and 60-line length)
	
7. Network Commands (15 commands)
	Network Interface Commands (5):
	1. ip link : #Display network interface information
		 ip link show (display all interfaces)
	2. ip addr : #Display IP address information
		 ip addr show (display all IP addresses)
	3. ifconfig : #Configure network interfaces (deprecated)
		 ifconfig eth0 (display eth0 interface info)
	4. netstat : #Display network statistics
		 netstat -tlnp (display TCP/UDP sockets)
	5. ss : #Display network socket statistics
		 ss -tlnp (display TCP sockets)
	Network Connection Commands (5):
	1. ping : #Test network connectivity
		 ping google.com (test connectivity to Google)
	2. traceroute : #Display network route
		 traceroute (link unavailable) (display route to Google)
	3. telnet : #Establish remote connection
		 telnet (link unavailable) 22 (connect to (link unavailable) on port 22)
	4. ssh : #Securely connect to remote server
		 ssh user@(link unavailable) (connect to (link unavailable) as user)
	5. scp : #Securely copy files between servers
		 `scp file.txt user@(link unavailable) (copy file to (link unavailable))
	Network Service Commands (5):
	1. service : #Manage system services
		 service sshd start (start SSH service)
	2. systemctl : #Manage system services (Systemd)
		 systemctl start sshd (start SSH service)
	3. nmap : #Network exploration and security auditing
		 nmap (link unavailable) (scan (link unavailable))
	4. dig : #DNS lookup utility
		 dig (link unavailable) (lookup Google's DNS records)
	5. host : #DNS lookup utility (similar to dig)
		 host (link unavailable) (lookup Google's DNS records)
	
8. System Configuration (10 commands)
	1. hostnamectl: #Display or modify hostname and related host settings.
		 Example: #hostnamectl set-hostname new-hostname
	2. locale: #Display or configure system locale and language settings.
		 Example: #locale -a (display all locales)
	3. tzselect: #Configure system timezone.
		 Example: #tzselect (interactive timezone selection)
	4. dpkg-reconfigure: #Reconfigure installed Debian packages.
		 Example: #dpkg-reconfigure tzdata (reconfigure timezone package)
	5. sysctl: #Configure kernel parameters at runtime.
		 Example: #sysctl -w net.ipv4.ip_forward=1 (enable IP forwarding)
	6. modprobe: #Load or unload kernel modules.
		 Example: #modprobe vboxdrv (load VirtualBox kernel module)
	7. lsmod: #Display loaded kernel modules.
		 Example: #lsmod | grep vbox (display VirtualBox related modules)
	8. update-initramfs: #Update initramfs (initial RAM file system) image.
		 Example: #update-initramfs -u (update initramfs image)
	9. mkinitramfs: #Create initramfs image manually.
		 Example: #mkinitramfs -o /boot/initrd.img-5.4.0-42-generic 5.4.0-42-generic
	10. update-grub: #Update GRUB (Grand Unified Bootloader) configuration.
		 Example: #update-grub (update GRUB configuration)
	
9. Security Commands (15 commands)
	1. ssh-keygen: #Generate SSH keys for secure authentication.
		 Example: #ssh-keygen -t rsa -b 4096 (generate 4096-bit RSA key)
	2. ssh-copy-id: #Copy SSH public key to remote servers for passwordless login.
		 Example: #ssh-copy-id user@remote_server (copy public key to remote_server)
	3. gpg: #Encrypt and decrypt files using GPG keys.
		 Example: #gpg -c file.txt (encrypt file.txt using GPG)
	4. openssl: #Manage SSL/TLS certificates and keys.
		 Example: #openssl req -x509 -newkey rsa:4096 -nodes -keyout server.key -out server.crt (generate self-signed certificate)
	5. netstat: #Display network connections and listening ports.
		 Example: #netstat -tlnp (display TCP listening ports with process info)
	6. ss: #Display socket statistics.
		 Example: #ss -tlnp (display TCP listening sockets with process info)
	7. auditctl: #Control audit system for security monitoring.
		 Example: #auditctl -e 1 (enable audit system)
	8. aide: #Monitor filesystem integrity using checksums.
		 Example: #aide --init (initialize aide database)
	9. rkhunter: #Scan for rootkits and malware.
		 Example: #rkhunter --check (scan system for rootkits and malware)
	10. chkrootkit: #Scan for rootkits and malware.
		 Example: #chkrootkit (scan system for rootkits and malware)
	11. iptables: #Configure firewall rules.
		 Example: #iptables -A INPUT -p tcp --dport 22 -j ACCEPT (allow SSH connections)
	12. nmap: #Network exploration and security auditing.
		 Example: #nmap remote_server (scan remote_server for open ports)
	13. fail2ban: #Ban IPs with excessive failed login attempts.
		 Example: #fail2ban-client status sshd (display fail2ban status for SSH)
	14. logwatch: #Monitor system logs for security issues.
		 Example: #logwatch --mailto user@example.com (send logwatch report to
	
10. Backup and Recovery (10 commands)
	1. tar: #Create archives of files and directories.
		 Example: #tar -czf backup.tar.gz /path/to/directory (create compressed archive)
	2. gzip: #Compress files and directories.
		 Example: #gzip /path/to/file (compress file)
	3. rsync: #Synchronize files and directories between systems.
		 Example: #rsync -avz /path/to/source /path/to/destination (sync directories)
	4. cp: #Copy files and directories.
		 Example: #cp -r /path/to/source /path/to/destination (copy directory)
	5. dd: #Create exact disk images or copy files.
		 Example: #dd if=/dev/sda of=/path/to/image.img (create disk image)
	6. dump: #Create backups of ext2, ext3, and ext4 filesystems.
		 Example: #dump -0ujf /path/to/backup /dev/sda1 (create backup of /dev/sda1)
	7. restore: #Restore backups created with dump command.
		 Example: #restore -rf /path/to/backup (restore backup)
	8. cfdisk: #Partition disks and create backups of partition tables.
		 Example: #cfdisk --backup /path/to/backup /dev/sda (backup partition table)
	9. sfdisk: #Partition disks and create backups of partition tables.
		 Example: #sfdisk --backup /path/to/backup /dev/sda (backup partition table)
	10. clonezilla: #Create backups and clones of disks and partitions.
		 Example: #clonezilla (launch clonezilla interface)
	
11. Package Management (10 commands)
	1. yum: #Manage packages on Red Hat systems.
		 Example: #yum install httpd (install httpd package)
	2. yum search: #Search for packages on Red Hat systems.
		 Example: #yum search httpd (search for httpd package)
	3. yum list: #List installed and available packages.
		 Example: #yum list httpd (list httpd package)
	4. yum info: #Display package information.
		 Example: #yum info httpd (display httpd package info)
	5. yum install: #Install packages on Red Hat systems.
		 Example: #yum install httpd (install httpd package)
	6. yum update: #Update installed packages on Red Hat systems.
		 Example: #yum update httpd (update httpd package)
	7. yum remove: #Remove packages on Red Hat systems.
		 Example: #yum remove httpd (remove httpd package)
	8. yum groupinstall: #Install package groups on Red Hat systems.
		 Example: #yum groupinstall "Web Server" (install Web Server group)
	9. yum repolist: #List enabled repositories on Red Hat systems.
		 Example: #yum repolist (list enabled repositories)
	10. yum clean: #Clean up package metadata on Red Hat systems.
		 Example: #yum clean all (clean up all package metadata)
	
12. Disk Management (10 commands)
	1. df: #Display disk usage statistics.
		 Example: #df -h (display disk usage in human-readable format)
	2. du: #Estimate disk usage of files and directories.
		 Example: #du -sh /path/to/directory (estimate disk usage of directory)
	3. fdisk: #Manipulate disk partition tables.
		 Example: #fdisk /dev/sda (manipulate partitions on /dev/sda)
	4. mkfs: #Create filesystems on block devices.
		 Example: #mkfs.ext4 /dev/sda1 (create ext4 filesystem on /dev/sda1)
	5. mount: #Mount filesystems on directories.
		 Example: #mount /dev/sda1 /mnt (mount /dev/sda1 on /mnt)
	6. umount: #Unmount filesystems from directories.
		 Example: #umount /mnt (unmount /mnt)
	7. blkid: #Display block device attributes.
		 Example: #blkid (display all block devices)
	8. lsblk: #Display block device information in tree-like format.
		 Example: #lsblk (display block device information)
	9. parted: #Manipulate disk partitions interactively.
		 Example: #parted /dev/sda (manipulate partitions on /dev/sda interactively)
	10. gdisk: #Manipulate GPT (GUID Partition Table) disks.
		 Example: #gdisk /dev/sda (manipulate GPT partitions on /dev/sda)
	
13. System Monitoring (15 commands)
	1. top: #Display real-time process activity.
		 Example: #top (display top processes)
	2. htop: #Interactive process viewer.
		 Example: #htop (display interactive process viewer)
	3. ps: #Display process status.
		 Example: #ps aux (display all processes)
	4. df: #Display disk usage statistics.
		 Example: #df -h (display disk usage in human-readable format)
	5. du: #Estimate disk usage of files and directories.
		 Example: #du -sh /path/to/directory (estimate disk usage of directory)
	6. free: #Display memory usage statistics.
		 Example: #free -m (display memory usage in megabytes)
	7. uptime: #Display system uptime.
		 Example: #uptime (display system uptime)
	8. who: #Display logged-in users.
		 Example: #who (display logged-in users)
	9. w: #Display logged-in users with additional info.
		 Example: #w (display logged-in users with additional info)
	10. last: #Display last logged-in users.
		 Example: #last (display last logged-in users)
	11. lastb: #Display last failed login attempts.
		 Example: #lastb (display last failed login attempts)
	12. vmstat: #Display virtual memory statistics.
		 Example: #vmstat (display virtual memory statistics)
	13. mpstat: #Display processor statistics.
		 Example: #mpstat (display processor statistics)
	14. iostat: #Display input/output statistics.
		 Example: #iostat (display input/output statistics)
	15. sar: #Display system activity information.
		 Example: #sar (display system activity information)
	
14. Miscellaneous (10 commands)
	1. man: #Display manual pages for commands.
		 Example: #man ls (display manual page for ls command)
	2. whatis: #Display one-line descriptions of commands.
		 Example: #whatis ls (display one-line description of ls command)
	3. whereis: #Locate binary, source, and manual pages.
		 Example: #whereis ls (locate ls command files)
	4. which: #Display path of executable files.
		 Example: #which ls (display path of ls executable)
	5. alias: #Create command aliases.
		 Example: #alias ll='ls -l' (create alias ll for ls -l)
	6. unalias: #Remove command aliases.
		 Example: #unalias ll (remove alias ll)
	7. history: #Display command history.
		 Example: #history (display command history)
	8. clear: #Clear terminal screen.
		 Example: #clear (clear terminal screen)
	9. reset: #Reset terminal settings.
		 Example: #reset (reset terminal settings)
	10. shutdown: #Shut down system.
		 Example: #shutdown now (shut down system immediately)
	

