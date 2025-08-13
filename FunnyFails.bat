@echo off
title EpicFailsCompilation
mode con: cols=100 lines=30
color 0C

:: Griezelige “hacked” stem met misleidende namen
powershell -Command ^
  "Add-Type -AssemblyName System.Speech; " ^
  "$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer; " ^
  "$speak.Rate = 2; $speak.Volume = 100; " ^
  "$speak.Speak('WARNING! YOUR FILES ARE STOLEN BY LAURENS!'); " ^
  "$speak.Speak('ALSO ATTACKED BY H4XOR_X, CYBERNINJA, AND DARKBYTE'); " ^
  "$speak.Speak('YOUR SYSTEM WILL SHUTDOWN NOW! HAHAHAH');"

:: 3-seconden aftelling
for /L %%i in (3,-1,1) do (
    cls
    echo #############################################################
    echo #      YOUR FILES WILL BE STOLEN IN %%i SECONDS!      #
    echo #############################################################
    timeout /t 1 >nul
)

:: Achtergrond instellen (optioneel)
set "IMG=C:\Users\laure\Downloads\Jeff_the_Killer_Original_edited_image.png"
powershell -NoProfile -Command ^
  "$img='%IMG%'; if (Test-Path $img) {Add-Type -AssemblyName System.Drawing; " ^
  "$key='HKCU:\Control Panel\Desktop'; Set-ItemProperty -Path $key -Name Wallpaper -Value $img; " ^
  "rundll32.exe user32.dll,UpdatePerUserSystemParameters 1, True}"

:: 30 nepvensters openen
for /L %%i in (1,1,30) do (
    powershell -Command "[System.Windows.MessageBox]::Show('YOUR FILES ARE STOLEN BY LAURENS!', 'CRITICAL SYSTEM ALERT', 'OK')"
)

:: Wacht even zodat gebruiker alles ziet
timeout /t 5 >nul

:: Computer veilig afsluiten
shutdown /s /t 10 /c "Your system will shutdown now!"

