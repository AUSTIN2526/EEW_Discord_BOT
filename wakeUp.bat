@ECHO OFF
SET /A "sec=%2-4"
IF %sec% LSS 0 SET "sec=0"
IF %1 == 0 SET "text=�a�_�t���A�w���_��%1�šA%sec%�����F"
IF %1 == 1 SET "text=�a�_�t���A�w���_��%1�šA%sec%�����F"
IF %1 == 2 SET "text=�a�_�t���A�w���_��%1�šA%sec%�����F"
IF %1 == 3 SET "text=�a�_�t���A�w���_��%1�šA%sec%�����F"
IF %1 == 4 SET "text=�a�_�t���A�w���_��%1�šA%sec%�����F"
IF %1 == 5- SET "text=�j�_ĵ���A�w���_��5�z�A%sec%�����F"
IF %1 == 5+ SET "text=�j�_ĵ���A�w���_��5�j�A%sec%�����F"
IF %1 == 6- SET "text=�j�_ĵ���A�w���_��6�z�A%sec%�����F"
IF %1 == 6+ SET "text=�j�_ĵ���A�w���_��6�j�A%sec%�����F"
IF %1 == 7 SET "text=�j�_ĵ���A�w���_��%1�šA%sec%�����F"

echo %text% > output.txt

PowerShell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('%text%');"