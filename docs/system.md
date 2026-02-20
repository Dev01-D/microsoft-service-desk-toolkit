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

## 🔑 Registry Fixes (The "Surgical" Tools)
> [!IMPORTANT]
> **The Golden Rule:** Never delete a key without right-clicking it and selecting **Export** first.

| Goal | Registry Path | Change |
| :--- | :--- | :--- |
| **Fix Outlook Profile** | `HKCU\Software\Microsoft\Office\16.0\Outlook\Profiles` | Delete corrupted sub-folder to reset. |
| **Disable Sticky Keys** | `HKU\.Default\Control Panel\Accessibility\StickyKeys` | Set `Flags` to `506`. |
| **Windows Version** | `HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion` | Verify `DisplayVersion` and `CurrentBuild`. |
| **Taskbar Chat** | `HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced` | Set `TaskbarMn` to `0`. |

## 🚀 Navigation "Speed-Dial"
*Type these into the **Run (Win + R)** box for instant access.*
* `%temp%` — User Temporary Files.
* `shell:startup` — Apps that launch at login.
* `\` — Root of the C: Drive.
* `..` — User Profile home folder.
