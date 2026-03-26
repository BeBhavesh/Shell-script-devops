# 🚀 Shell Scripting for DevOps (A → Z Guide)

A complete beginner-to-advanced guide for **Bash / Shell Scripting** focused on **DevOps use cases**.

---

## 📌 1. Basic Script Structure

```bash
#!/bin/bash

# This is a comment
echo "Hello World"
```

---

## 🔤 2. Variables

```bash
name="Rahul"
echo $name
```

⚠️ No spaces:

```bash
name = "Rahul" ❌
```

---

## ⌨️ 3. User Input

```bash
read -p "Enter your name: " name
echo "Hello $name"
```

---

## 🔀 4. Conditions (if-else)

```bash
if [ "$name" = "Rahul" ]
then
  echo "Correct"
else
  echo "Wrong"
fi
```

---

## 🔁 5. Loops

### ➤ For Loop

```bash
for i in {1..5}
do
  echo $i
done
```

### ➤ While Loop

```bash
count=1
while [ $count -le 5 ]
do
  echo $count
  ((count++))
done
```

---

## ⚙️ 6. Functions

```bash
greet() {
  echo "Hello $1"
}

greet Rahul
```

---

## 📂 7. File Handling

### Check if file exists

```bash
if [ -f file.txt ]
then
  echo "File exists"
fi
```

### Loop through files

```bash
for file in *
do
  echo $file
done
```

---

## 🔧 8. String Operations

```bash
file="app.txt"

echo ${file%.txt}     # remove extension
echo ${file/.txt/.sh} # replace extension
echo ${#file}         # length
```

---

## 🔄 9. Command Substitution

```bash
current_date=$(date)
echo $current_date
```

---

## 📊 10. Exit Status

```bash
ls file.txt
echo $?
```

* `0` → Success
* Non-zero → Error

---

## 🌐 11. DevOps Use Case (Server Check)

```bash
if ping -c 1 google.com > /dev/null 2>&1
then
  echo "Server is UP"
else
  echo "Server is DOWN"
fi
```

---

## 📦 12. Script Arguments

```bash
echo "First arg: $1"
echo "All args: $@"
```

Run:

```bash
./script.sh hello world
```

---

## 🔐 13. Permissions

```bash
chmod +x script.sh
./script.sh
```

---

## ⚠️ 14. Error Handling

```bash
set -e  # exit on error
set -x  # debug mode
```

---

## 🔀 15. Case Statement

```bash
case $1 in
  start) echo "Starting";;
  stop) echo "Stopping";;
  *) echo "Invalid option";;
esac
```

---

## 🧰 16. Important Commands

| Command | Use             |
| ------- | --------------- |
| grep    | search text     |
| awk     | text processing |
| sed     | replace text    |
| cut     | extract columns |
| sort    | sorting         |

---

## 🔥 17. Real DevOps Script Example

```bash
#!/bin/bash

for server in google.com github.com
do
  if ping -c 1 $server > /dev/null 2>&1
  then
    echo "$server is UP"
  else
    echo "$server is DOWN"
  fi
done
```

---

## 🧠 18. Best Practices

* Always use quotes `" "`
* Test scripts before production
* Use backups
* Use meaningful variable names

---

## 🎯 Conclusion

Shell scripting is a **powerful tool in DevOps** for:

* Automation
* Deployment
* Monitoring
* CI/CD pipelines

---

## ⭐ Contribute

Feel free to fork this repo and improve it!

---

## 📌 Author

Bhavesh, 
Made with ❤️ for DevOps learners
