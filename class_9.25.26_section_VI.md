mkdir -p live-server-diagnostics/{diagnostics/python,diagnostics/shell,logs,reports}

cat << 'EOF' > logs/server.log
2026-09-25T09:00:01 INFO server started
2026-09-25T09:01:14 INFO health check passed
2026-09-25T09:02:18 WARN disk usage above 70 percent
2026-09-25T09:03:42 ERROR database connection timeout
2026-09-25T09:04:15 INFO retrying database connection
2026-09-25T09:05:22 ERROR failed login attempt detected
2026-09-25T09:06:30 CRITICAL payment service unavailable
2026-09-25T09:07:40 INFO server diagnostic complete
EOF

FYI: if your CLI/GitBash gits stuck try ESC or control C

After (i) inserting information into a file, hit esc, and then :wq! to save quit.

The following is what we did in class:

touch diagnostics/python/system_info.py
then vi diagnostics/python/system_info.py

i to insert via copy paste
import shutil
import os


def check_resources():
    disk_threshold = 85
    load_threshold = 4.0

    total, used, free = shutil.disk_usage("/")
    disk_percent = round((used / total) * 100, 2)

    print("RESOURCE CHECK")
    print("==============")
    print(f"Disk usage: {disk_percent}%")
    print(f"Disk threshold: {disk_threshold}%")

    if disk_percent >= disk_threshold:
        print("Disk status: WARNING")
    else:
        print("Disk status: OK")

    if hasattr(os, "getloadavg"):
        one_minute_load = os.getloadavg()[0]
        print(f"One-minute load average: {one_minute_load}")

        if one_minute_load >= load_threshold:
            print("Load status: WARNING")
        else:
            print("Load status: OK")
    else:
        print("Load average: not available on this system")


check_resources()

esc, :wq!

touch diagnostics/shell/disk_snapshot.sh

vi diagnostics/shell/disk_shapshot.sh

i insert copy paste the following

#!/usr/bin/env bash

PATH_TO_CHECK="${1:-.}"

echo "DISK SNAPSHOT"
echo "============="
echo "Target path: $PATH_TO_CHECK"
echo

echo "Filesystem usage:"
df -h "$PATH_TO_CHECK"
echo

echo "Directory size:"
du -sh "$PATH_TO_CHECK" 2>/dev/null
echo

echo "File count:"
find "$PATH_TO_CHECK" -maxdepth 2 -type f 2>/dev/null | wc -l

esc :wq!

Use cat to verify what's in those files

Use ctrl a = to the beginning of line
Use ctrl e = goes to end of line

git stash
git stash pop