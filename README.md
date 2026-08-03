# Linux_Infrastructure_Automation

## Description

Linux Infrastructure Automation is a Bash-based project designed to automate common Linux system administration tasks.

The goal of this project is to create tools that help Linux administrators monitor servers, automate project setup, and reduce repetitive infrastructure operations.

This project is part of my Cloud Computing learning journey, focusing on Linux administration, Bash scripting, and automation.

---

## Features

### 1. Server Health Check

A Bash script that monitors the health status of a Linux server.

#### Capabilities

* CPU usage monitoring
* Memory usage monitoring
* Disk usage monitoring
* System health status evaluation
* Automatic logging
* Cron automation support

**Run the script:**

```bash
./features/server_health_check.sh
```

**Logs are stored in:**

```text
logs/health.log
```

---

### 2. Project Setup Automation

A Bash script that automatically creates a professional project directory structure.

#### The script

* Requests company name
* Requests project name
* Requests department name
* Creates project folders automatically
* Organizes infrastructure files

**Generated structure example:**

```text
Company/
└── Project/
    ├── docs/
    ├── config/
    ├── scripts/
    ├── logs/
    └── backup/
```

**Run the script:**

```bash
./features/setup_project.sh
```

---

## Project Structure

```text
Linux_Infrastructure_Automatisation/
├── README.md
├── features/
│   ├── server_health_check.sh
│   └── setup_project.sh
└── logs/
    └── health.log
```

---

## Technologies Used

* Linux Ubuntu
* Bash
* Cron
* Git
* GitHub


---

## Installation

Clone the repository:

```bash
git clone <repository-url>
```

Navigate into the project:

```bash
cd Linux_Infrastructure_Automatisation
```

Give execution permission to the scripts:

```bash
chmod +x features/server_health_check.sh
chmod +x features/setup_project.sh
```

---

## Usage

Run the server health monitoring script:

```bash
./features/server_health_check.sh
```

Run the project setup automation script:

```bash
./features/setup_project.sh
```

---

## Automation with Cron

The server health check script can be scheduled using Cron to run automatically.

**Example (every 5 minutes):**

```cron
*/5 * * * * /path/to/Linux_Infrastructure_Automatisation/features/server_health_check.sh
```

This allows automatic server monitoring and log generation.

---

## Future Improvements

Planned features include:

* User management automation
* Backup automation using tar archives
* Server audit reports
* Network monitoring tools
* Cloud integration

---

## Author

**Francesca**

