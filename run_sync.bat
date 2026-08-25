@echo off
TITLE APEX Database to GitHub Sync Process

echo Step 1: Navigating to Local Git Repository...
cd /d E:\git_hub\apex_github_sync

echo.
echo Step 2: Exporting Database Data via SQLcl...
call E:\database_oracle_apex\sqlcl\sqlcl\bin\sql.exe -thin sys/Oracle_12345@localhost:1522/orclpdb as sysdba @E:\git_hub\apex_github_sync\export_script.sql

echo.
echo Step 3: Committing and Pushing Data to GitHub...
git add .
git commit -m "Auto Update DB Data: %date% %time%"
git push origin main

echo.
echo Process Complete Successfully!
pause