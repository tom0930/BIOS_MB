@ echo -off
echo -off

set AfuName  AfuEfix64.efi
set BIOSName A511_A5.bin


set BlkNum 0
if exist fs%BlkNum%:\%BIOSName% then
fs%BlkNum%:\%AfuName%  fs%BlkNum%:\%BIOSName% /p /b /n /r /x /reboot
goto success
endif

for %a RUN (1 16)
set BlkNum %a
if exist fs%BlkNum%:\%BIOSName%  then
fs%BlkNum%:\%AfuName%  fs%BlkNum%:\%BIOSName% /p /b /n /r /x /reboot
goto success
endif
endfor

set -d BlkNum
set -d BIOSName 
set -d AfuName
goto end  
:success 

:end
