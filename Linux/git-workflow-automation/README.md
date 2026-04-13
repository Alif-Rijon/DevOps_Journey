# 🚀 Git Workflow Automation

## 📌 Overview

This project automates a daily Git workflow using a Bash script. It helps reduce repetitive tasks and simulates a basic DevOps pipeline.

The script:

* Works in `initial` branch
* Commits changes automatically
* Pushes to GitHub
* Merges into `main` branch
* Handles merge conflicts

---

## 🎯 Purpose

* Practice DevOps concepts
* Automate Git operations
* Improve productivity
* Build real-world workflow understanding

---

## ⚙️ Features

* ✅ Auto branch detection & switching
* ✅ Auto add & commit
* ✅ Dynamic commit message:

  * File names
  * File count
  * Date
* ✅ Push to remote repository
* ✅ Merge `initial → main`
* ✅ Conflict detection

---

## 📂 Project Structure

```
.
├── auto_push.sh
└── README.md
```

---

## ▶️ Usage

### Step 1: Make script executable

```
chmod +x auto_push.sh
```

### Step 2: Run the script

```
./auto_push.sh
```

---

## 🧠 How It Works

1. Checks current branch
2. Switches to `initial` if needed
3. Adds and commits changes
4. Pushes to `initial`
5. Switches to `main`
6. Pulls latest changes
7. Merges `initial → main`
8. Pushes updated `main`

---

## 🏷️ Version

**Current Version:** v1.0

---

## 🧾 Version History

### v1.0

* Initial automation script
* Dynamic commit message (files + count + date)
* Auto merge system
* Conflict handling

---

## ⚠️ Limitations

* Designed for single developer workflow
* Merge conflicts must be resolved manually
* No CI/CD pipeline yet

---

## 🔮 Future Improvements

* [ ] Improve commit format (comma-separated files)
* [ ] Add logging system
* [ ] Add GitHub Actions (CI/CD)
* [ ] Add Slack/Email notifications
* [ ] Add pre-merge testing
* [ ] Implement Pull Request workflow

---

## 🧩 DevOps Concepts Practiced

* Automation
* Git workflow management
* Basic CI/CD thinking
* Error handling

---

## 🏁 Conclusion

This project demonstrates how simple automation can improve development workflows and serves as a foundation for building more advanced DevOps pipelines.
