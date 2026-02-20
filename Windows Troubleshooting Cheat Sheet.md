# 🛠️ IT Service Desk: Windows Troubleshooting Cheat Sheet

This resource contains high-impact shortcuts and commands for Windows troubleshooting. Use these to reduce "time-to-resolution" during remote sessions or on-site support.

---

## ⚡ Emergency Recovery
*Use these when the system is hanging, the screen is black, or the OS is unresponsive.*

| Shortcut | Action | Use Case |
| :--- | :--- | :--- |
| **Ctrl + Shift + Esc** | Open Task Manager | Kill unresponsive apps or restart `explorer.exe`. |
| **Win + Ctrl + Shift + B** | Restart Graphics Driver | Fixes black screens or frozen displays (you will hear a beep). |
| **Shift + Click "Restart"** | Advanced Startup | Boot into Safe Mode, WinRE, or Command Prompt. |
| **Ctrl + Alt + Del** | Security Screen | Force a logout or access Task Manager when the desktop is frozen. |
| **Win + X, U, U** | Fast Shutdown | Shuts down the PC immediately without using the mouse. |

---

## 🌐 Networking & Connectivity
*Quick access to adapter settings and diagnostic tools.*

| Command (Win + R) | Tool | Use Case |
| :--- | :--- | :--- |
| `ncpa.cpl` | Network Connections | Change IP settings, disable/enable adapters. |
| `inetcpl.cpl` | Internet Properties | Clear SSL state, manage proxy settings, or reset IE settings. |
| `mstsc` | Remote Desktop | Connect to a remote server or user machine. |
| `cmd /k ipconfig /flushdns` | DNS Flush | Resolve "Site can't be reached" errors immediately. |
| `cmd /k ping -t 8.8.8.8` | Continuous Ping | Check for intermittent packet loss or ISP drops. |

---

## ⚙️ System Configuration & Rights
*Tools for managing user accounts, software, and local policies.*

| Command (Win + R) | Tool | Use Case |
| :--- | :--- | :--- |
| `sysdm.cpl` | System Properties | Rename PC, change Domain, or edit Environment Variables. |
| `appwiz.cpl` | Programs & Features | Fastest way to uninstall software or check install dates. |
| `services.msc` | Services Manager | Restart Print Spooler, Windows Update, or third-party services. |
| `compmgmt.msc` | Computer Management | Access Disk Management & Local Users/Groups in one UI. |
| `gpupdate /force` | Group Policy Update | Force new IT policies to apply without requiring a logout. |
| `netplwiz` | User Accounts | Manage local admin rights or set up auto-logon. |

---

## 🔍 Hardware & Diagnostic Logs
*Investigating hardware failures, blue screens (BSOD), or software crashes.*

| Command (Win + R) | Tool | Use Case |
| :--- | :--- | :--- |
| `devmgmt.msc` | Device Manager | Check for driver errors or "Unknown Devices." |
| `eventvwr.msc` | Event Viewer | Check "Windows Logs > System" for critical error codes. |
| `msinfo32` | System Information | Check BIOS version, Secure Boot status, and serial numbers. |
| `resmon` | Resource Monitor | Identify which process is causing 100% Disk or CPU usage. |
| `dxdiag` | DirectX Diagnostic | Check GPU health and audio hardware details. |

---

## 💡 Service Desk "Pro Tips"

### 1. The "Copy Error" Trick
When a standard Windows error dialog box appears, don't take a screenshot. Simply press **Ctrl + C** while the window is active. It will copy the full text of the error to the clipboard, which can then be pasted into a ticket.

### 2. The "Elevated" Run Command
If you need to run any of the tools above as an Administrator from the **Win + R** box:
1. Type the command (e.g., `cmd` or `services.msc`).
2. Press **Ctrl + Shift + Enter**.

### 3. God Mode (All Settings Folder)
Create a new folder on the desktop and name it exactly this:  
`GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}`  
This creates a single icon that lists every single Windows setting in one searchable list.

---
*Maintained by the IT Service Desk Team.*
