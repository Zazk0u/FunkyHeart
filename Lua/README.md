How to install a mod:<br/>
Step 1:<br/>
Download the experimental-latest version of the Unreal Engine 4/5 Scripting System<br/>
https://github.com/UE4SS-RE/RE-UE4SS/releases <br/>
Click on Assets then download something like UE4SS_v3.0.1-932-ge31aaaa6.zip

Step 2:<br/>
Extract the UE4SS zip folder's contents in FUNKYHEART\Engine\Binaries\Win64\ <br/>
You will know if it work by pressing F10 in game, it should now bring up the Unreal Engine dev console.
<img width="1294" height="358" alt="1" src="https://github.com/user-attachments/assets/ba45f764-b962-4a3c-98f4-5495a8c5296f" />

Step 3:<br/>
Download one my mod zip file and extract the mod's contents in FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\

The structure should look like:<br/>
FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\\"Downloaded Mod"\Scripts\main.lua<br/>
<img width="1661" height="191" alt="2" src="https://github.com/user-attachments/assets/a6223719-7948-43c1-94ba-aa1afc645163" />

Don't accidentaly extract a zip mod folder of one of my mod and endup with a nested folder like this:
FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\\"Downloaded Mod"\\"Downloaded Mod"\Scripts\main.lua

Step 4:<br/>
Edit mods.txt in FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\ by adding the name of the downloaded mod, a colon, then 1.<br/>

Exemple:<br/> 
InfiniteJumps : 1<br/>

The mod won't launch if it's not done, you have to do this for every mods you download.

Step 5:<br/>
You did it.
