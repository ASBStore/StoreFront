@echo off
git --version
set /p gitInstalled=was a version number present ie(1.2.3) or did it just show error? (y/n):

if %gitInstalled%==y (goto gitpresent)
echo installing git
winget install --id Git.Git -e --source winget
echo Git Installed

:gitpresent
set token=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
echo When Prompted For Login Select Token Then Copy And Paste This Into The Text Box: %token%
pause
curl https://raw.githubusercontent.com/ASBStore/ASBOrders/main/Logins.txt?token=GHSAT0AAAAAACKSB3BUQHKKVDFUIXCZZPSAZK36ZMA --ssl-no-revoke>Logins.txt

echo %USERNAME% %DATE% %TIME% >>Logins.txt
git commit Logins.txt -m "New Login"
git push