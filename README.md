

# 📊 Disk Usage Visualizer with Auto-Cleanup

A powerful Bash-based tool that helps system admins monitor disk usage, identify large/old files, visualize usage with an HTML pie chart, and optionally delete unnecessary files — all in one script.

---

## 🔥 Why It’s Powerful

- ✅ Saves admin time by automating disk analysis  
- ✅ Enforces disk usage policies with optional cleanup  
- ✅ Outputs a **visual report** (HTML + Pie Chart)  
- ✅ Can email summary reports using `ssmtp`  
- ✅ Fully scriptable and can be scheduled via `cron`

---

## 🚀 Features

- Scans the filesystem for:
  - Large files
  - Old files (older than 30 days)
- Outputs top usage list (`disk_report.txt`)
- Generates a dynamic **HTML pie chart report** (`report.html`)
- Prompts user to **delete large + old files**
- Stores deletion candidates in `to_delete.txt`




