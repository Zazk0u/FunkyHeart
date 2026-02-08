How to install a mod:<br/>
Step 1:<br/>
Download the experimental-latest version of the Unreal Engine 4/5 Scripting System<br/>
https://github.com/UE4SS-RE/RE-UE4SS/releases

Step 2:<br/>
Extract the UE4SS zip folder's contents in FUNKYHEART\Engine\Binaries\Win64\

Step 3:<br/>
Download one my mod zip file and extract the mod's contents in FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\

The structure should endup look like:<br/>
FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\\"Downloaded Mod"\Scripts\main.lua<br/>

Don't accidentaly extract a zip mod folder of one of my mod and endup with a nested folder like this:
FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\\"Downloaded Mod"\\"Downloaded Mod"\Scripts\main.lua

Step 4:<br/>
Edit mods.txt in FUNKYHEART\Engine\Binaries\Win64\ue4ss\Mods\ by adding the name of the downloaded mod, a colon, then 1.<br/>
Exemple: "InfiniteJumps : 1"<br/>
The mod won't launch if it's not done, you have to do this for every mods you download.
