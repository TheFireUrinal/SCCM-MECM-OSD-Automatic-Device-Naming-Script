# OSD Automatic Device Naming Script

I wrote this basic script to automatically name devices as my current organization generally provisions apps and packages via automatic groups that are mainly name based.
You can use this script in a specific task sequence to automatically name devices a certain way if that sequence is selected.
The way I utilize this is by having a sequence for each department ex: finance, HR, maintenance etc... and each of the sequences has it's own variation of the script to name it correctly.
I use this with asset tag numbers but this can be used with serial numbers as well but will need adjustments. 

I have attached the base script and some variations. It is fairly self explanitory but is also anotated for complete poweshell newbies.

Place this step in the task sequence right before "Apply Windows Settings"

![img 2](https://github.com/TheFireUrinal/SCCM-MECM-OSD-Automatic-Device-Naming-Script/blob/main/Assets/task%20sequence%20position.png)


Three things to note in the settings
	
 1. It is best to use "Enter a PowerShell script" and just copy and paste it into the code editor as you won't have to deal with a package and there is no benefit to a package as this will only be used in a single sequence.
	
 2. The PowerShell execution policy needs to be set to "Bypass" because this is unsigned code and it otherwise will not run the code and will error out.
  
  ![img 1](https://github.com/TheFireUrinal/SCCM-MECM-OSD-Automatic-Device-Naming-Script/blob/main/Assets/properties%20pane.png)

  3. PowerShell must be enabled in the Windows PE image. If you don't know how to do then ask chat gpt or something. idc I'm not your mom. 

*You should understand and know what you are running in powershell before running it.*
