How to install a mod:<br/>
Step 1:
Download the experimental-latest version of the Unreal Engine 4/5 Scripting System<br/>
https://github.com/UE4SS-RE/RE-UE4SS/releases

Step 2:
Extract the UE4SS zip folder's contents in FUNKYHEART\Engine\Binaries\Win64\

Step 3:
Download one my mod and extract the mod's contents in FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\

The structure should look like:<br/>
FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\\"Downloaded Mod"\Scripts\main.lua<br/>

Don't accidentaly extract a zip folder of one of my mod and endup with a nested folder:
FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\\"Downloaded Mod"\\"Downloaded Mod"\Scripts\main.lua

Step 4:
Edit mods.txt in FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\ by adding the name of the downloaded mod, a colon, then 1.<br/>
Exemple: "InfiniteJumps : 1"
