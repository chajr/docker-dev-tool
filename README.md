# Docker dev tools
Docker image contain lot of tools usable for debugging other containers.

## Usage

`docker run --net container:{container name} --pid container:{container name} -it --rm bluetree/docker-dev-tool {command}`

Example:  
`docker run --net container:test --pid container:test -it --rm bluetree/docker-dev-tool bashtop`

Usage tools on host OS:  
`docker run --net host --pid host -it --rm bluetree/docker-dev-tool bashtop`

## List of included programs

### Terminal

* **zsh** - interactive shell and as a scripting language interpreter
* **pv** - monitor the progress of data through a pipe

### Files & directories

* **mc** - file manager
* **tree** - display file structure as tree
* **exa** - a modern replacement for ‘ls’

### Editors

* **vim** - text editor
* **nano** - text editor, easier than vim
* **emacs** - very powerful text editor

### System

* **inxi** - system information
* **htop** - display current system overloading
* **bashtop** - more advanced version of htop
* **ctop** - top for monitoring containers
* **iotop** - monitor hard disk load in real time
* **dstat** - monitor hard disk load
* **hdparm** - get/set hard disk parameters
* **iostat** - hard disk load
* **smem** - report memory usage with shared memory divided proportionally
* **lsof** - display opened files & programs that using them
* **pidstat** - monitor and find statistics for linux processes
* **osquery** - an operating system instrumentation framework

### Network

* **ping** - test network connection
* **fping** - extended version of ping
* **netstat** - display list ov available TCP & UDP connections
* **nmap** - network exploration tool and security / port scanner
* **nc** - arbitrary TCP and UDP connections and listens
* **curl** - transfer data from or to a server, using one of the supported protocols
* **nethogs** - monitoring network traffic
* **mtr** - (my traceroute) command line network diagnostic tool
* **wget** - download files
* **ip** - network interface configuration & information
* **arp-scan** - scan the network of a certain interface for alive hosts
* **iftop** - network bandwidth monitoring tool that shows updated list of network usage bandwidth
* **bmon** - network bandwidth monitoring and debugging tool
* **nload** - monitor network bandwidth usage in real time
* **speedometer** - shows a graph of your current and past network speed
* **lynx** - cli web browser
* **tcpdump** - capture and analyze network traffic
* **telnet** - network protocol for connect to remote systems
* **whois** - domain detailed information
* **ftp** - file transfer protocol
* **sshfs** - mount directories by ssh
* **rsync** - synchronize files & directories

### Databases

* **mytop** - MySQL - performance monitor
* **innotop** - MySQL and InnoDB transaction/status monitor

### Other tools

* **bat** - a cat(1) clone with syntax highlighting and Git integration
* **ag** - very fast grep-like program, alternative to ack-grep
* **tig** - git cli interface
* **jp2a** - display images in cli as ascii
* **hexdump** - dump file contents into many formats like hexadecimal, octal, ASCII and decimal
* **fmt** - formatter for simplifying and optimizing text files
* **multitail** - tail on multiple hosts in same time
* **lnav** - log navigator, watch logs in real time and format output
