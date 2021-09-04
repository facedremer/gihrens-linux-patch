# gihrens-linux-patch
A simple bash script that renames image files included in the english translation project for Gihren's Greed: The Menace of Axis in order to run the english patch correctly on linux systems. The following instructions detail how I got the game working on Ubuntu 20.04.

<b>Instructions</b>
<br />
1. Install ppsspp.<br><i>$ sudo apt install ppsspp</i>
2. Clone the repo for the <a href="https://github.com/GihrensTranslator/ppsspp">modded version of ppsspp</a> graciously provided by the translator.
3. Follow the instructions on the <a href="https://github.com/hrydgard/ppsspp/wiki/Build-instructions">ppsspp wiki</a> and compile an SDL build of the modded version.
4. Download the latest version of the <a href="https://pastebin.com/3fLsrSit">english patch</a>.
5. Move the <b>CHEATS</b>, <b>SYSTEM</b>, and <b>TEXTURES</b> directories into your ppsspp configs (~/.config/ppsspp).
6. Follow the instructions in the english patch's README file to patch the game.
7. Make <b>rename.sh</b> executable<br><i>$ chmod +x rename.sh</i><br />
8. Run <b>rename.sh</b> with the path to the game's <b>TEXTURES</b> directory as an argument.<br><i>$ ./rename.sh ~/.config/ppsspp/PSP/TEXTURES/ULJS00178/</i><br />
9. Add <i>alias gppsspp='path/to/modded/ppsspp'</i> to your .bashrc file.
10. Run <i>$ gppsspp</i> and load up your patched ISO file.

<b>VOILA!!</b> The translation should now work correctly. Feel free to contact me on here or email me at facedremer@gmail.com if you have any questions or concerns.

Note: location of ppsspp configuration files may vary.
