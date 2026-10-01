# Linux Deep Dive

Personal notes and shell scripting exercises from working with Linux in production — command references, scripting practice, and operational snippets.

## Contents

| Path | Description |
|------|-------------|
| `docs/linux-commands.md` | Linux command reference organized by category (navigation, system info, processes, networking, etc.) |
| `docs/SMPP_v3_4_Issue1_2.pdf` | SMPP v3.4 protocol specification (SMS messaging, from telecom/NOC work) |
| `scripts/backup_git.sh` | Clone a Git repository and archive it as a timestamped tarball |
| `scripts/check_linux_version.sh` | Detect the Linux distribution and version |
| `scripts/sleep.sh` | Demo of background jobs and `wait` in bash |

## Quick reference

| Command | Purpose |
|---------|---------|
| `ls` | List directory contents |
| `cd` | Change directory |
| `pwd` | Print working directory |
| `cp` | Copy files from source to destination |
| `mv` | Move/rename files |
| `mkdir` | Create directories |
| `rmdir` | Remove empty directories |
| `touch` | Change file timestamp or create empty files |
| `find` | Search for files in a directory hierarchy |
| `locate` | Find files by name (uses a database) |
| `tree` | Display directories in a tree-like format |
| `chmod` | Change file permissions |
| `chown` | Change file owner and group |
| `chgrp` | Change group ownership |
| `stat` | Display file or filesystem status |

## Usage

```bash
./scripts/check_linux_version.sh   # detect distro and version
./scripts/sleep.sh                 # background-job demo
./scripts/backup_git.sh            # back up a git repo to /tmp/backup
```
