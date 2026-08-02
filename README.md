#Linux Infrastructure Automatisation

## Server Health check
A Bash sript that monitor Linux system health.

##Features
-CPU Usage monitoring
-Memory usage monitoring
-Disk usage monitoring
-System status check
-Automated logging
-Cron scheduling

## Technologies
-Linux Ubuntu
-Bash scripting
-Cron

## Usage
Run:
'''bash
./server_health_check.sh
Linux Infrastructure Automation 🐧

Description

Linux Infrastructure Automation is a Bash-based project designed to automate common Linux system administration tasks.

The goal of this project is to build a collection of tools that help a Linux administrator monitor servers, automate project setup, and simplify repetitive infrastructure operations.

This project is part of my Cloud Computing learning journey, focusing on Linux administration, Bash scripting, and automation.

⸻

Features

1. Server Health Check

A Bash script that monitors the health of a Linux system.

Capabilities:

* CPU usage monitoring
* Memory usage monitoring
* Disk usage monitoring
* System health status report
* Automatic logging
* Scheduled execution with Cron

Script:

./server_health_check.sh

⸻

2. Project Setup Automation

A Bash script that automatically creates a professional project directory structure.

The script:

* Requests company name
* Requests project name
* Requests department name
* Validates user inputs
* Checks if the project already exists
* Stops execution when an error occurs
* Creates project folders automatically

Generated structure example:

Company/
└── Project/
    ├── docs/
    ├── config/
    ├── scripts/
    ├── logs/
    └── backup/

Script:

./setup_project.sh

⸻

Project Structure

Linux_Infrastructure_Automatisation/
│
├── server_health_check.sh
├── setup_project.sh
├── README.md
├── health.log
└── .gitignore

⸻

Technologies Used

* Linux Ubuntu
* Bash scripting
* Cron
* Git
* GitHub

⸻

Installation

Clone the repository:

git clone <repository-url>

Navigate into the project:

cd Linux_Infrastructure_Automatisation

Give execution permission to scripts:

chmod +x server_health_check.sh
chmod +x setup_project.sh

⸻

Usage

Run the server monitoring script:

./server_health_check.sh

Run the project creation automation script:

./setup_project.sh

⸻

Automation

The server health check script can be automated using Cron.

Example:

*/5 * * * * /home/user/Linux_Infrastructure_Automatisation/server_health_check.sh

This executes the monitoring script every 5 minutes and stores reports in the log file.

⸻

Future Improvements

Planned features:

* User management automation
* Backup automation with tar archives
* Server audit reporting
* Network monitoring tools
* More advanced Bash functions and error handling

⸻

Author

Francesca

