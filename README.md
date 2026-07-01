# System Monitoring and Alerting Script

## Overview

The **System Monitoring and Alerting Script** is a Bash shell script developed as part of a DevOps Capstone Project. The objective of this project is to automate the monitoring of important Linux system resources such as disk usage, memory usage, and running processes.

The script checks the current health of the system, displays useful monitoring information, generates alert messages whenever predefined thresholds are exceeded, and records those alerts in a log file. This project demonstrates practical Linux administration, Shell Scripting, and Git version control skills used in day-to-day DevOps operations.

---

## Features

- Displays basic system information
  - Hostname
  - Current User
  - Current Date & Time
  - System Uptime
- Monitors Disk Usage
- Monitors Memory Usage
- Displays the Top CPU-consuming Processes
- Displays the Top Memory-consuming Processes
- Generates alerts when usage exceeds the configured threshold
- Stores alert messages in `monitor.log`
- Displays a final System Health Summary

---

## Technologies Used

- Linux (Ubuntu)
- Bash Shell Scripting
- Git
- GitHub

---

## Project Structure

```text
system-monitoring-script/
│── system_monitor.sh
│── README.md
└── monitor.log
```

---

## Prerequisites

Before running the script, ensure you have:

- Ubuntu or any Linux distribution
- Bash Shell
- Git

---

## Installation

Clone the repository:

```bash
git clone https://github.com/AryapratapNayak/system-monitoring-script.git
```

Navigate to the project directory:

```bash
cd system-monitoring-script
```

Give execute permission to the script:

```bash
chmod +x system_monitor.sh
```

---

## Usage

Run the script using:

```bash
./system_monitor.sh
```

---

## Monitoring Thresholds

| Resource | Threshold |
|----------|-----------|
| Disk Usage | 80% |
| Memory Usage | 80% |

If the usage exceeds the configured threshold, the script displays an alert message and saves it to the log file.

---

## Sample Output

```text
======================================
      SYSTEM MONITORING SCRIPT
======================================

Hostname : admin
Current User : aryapratap
Date : Wed Jul 1 2026
Uptime : up 1 hour

========== Disk Usage ==========
Current Disk Usage : 48%
STATUS : OK
Disk usage is within the safe limit.

========== Memory Usage ==========
Current Memory Usage : 14%
STATUS : OK
Memory usage is within the safe limit.

========== Top CPU Processes ==========
Displays the top CPU-consuming processes.

========== Top Memory Processes ==========
Displays the top Memory-consuming processes.

======================================
      SYSTEM HEALTH SUMMARY
======================================

Disk Usage : 48%
Memory Usage : 14%

Monitoring completed successfully.
```


---

## Alert Logging

Whenever the disk usage or memory usage exceeds the configured threshold, the script automatically records the event in `monitor.log`.

Example:

```text
Wed Jul 1 06:12:11 UTC 2026 - ALERT: Disk usage is 85%.
Wed Jul 1 06:12:11 UTC 2026 - ALERT: Memory usage is 82%.
```

---

## Git Workflow

This project was developed using Git with multiple meaningful commits to track each feature added during development.

Some of the commits include:

- Initial project setup
- Added disk usage monitoring
- Enhanced disk monitoring with threshold alerts
- Added memory usage monitoring
- Added CPU and memory process monitoring
- Added alert logging
- Updated monitoring thresholds
- Added project documentation

---

## What I Learned

Through this project, I gained practical experience with:

- Linux system administration
- Bash shell scripting
- Process monitoring
- Conditional statements and variables
- Logging using Shell Script
- Git version control
- GitHub repository management

---

## Author

**Aryapratap Nayak**

DevOps Enthusiast | Linux | Shell Scripting | Git | AWS

GitHub: https://github.com/AryapratapNayak

---

