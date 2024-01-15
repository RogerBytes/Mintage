#!/bin/zsh

# OAD
flatpak install flathub -y com.play0ad.zeroad

# AM2R
flatpak install flathub -y io.github.am2r_community_developers.AM2RLauncher
wget https://github.com/B4rabbas/wargus/releases/download/1/AM2R_1.1.zip
~/.var/app/io.github.am2r_community_developers.AM2RLauncher/data/AM2RLauncher
wget https://github.com/B4rabbas/wargus/releases/download/1/AM2R_1.1.zip -P ~/.var/app/io.github.am2r_community_developers.AM2RLauncher/data/AM2RLauncher

# Aural Quiz
sudo nala install -y auralquiz

# Arx Fatalis (Arx Libertatis)
sudo add-apt-repository -y ppa:arx/release
sudo nala update
sudo nala install -y  arx-libertatis
wget https://github.com/B4rabbas/wargus/releases/download/1/arx.tar.gz
tar -xzf arx.tar.gz -C ~/.local/share/
rm arx.tar.gz

# Berusky 2
sudo nala install -y berusky2

# Cave Story
flatpak install flathub -y com.gitlab.coringao.cavestory-nx

# Corsix TX
flatpak install -y flathub com.corsixth.corsixth
wget https://github.com/B4rabbas/wargus/releases/download/1/com.corsixth.corsixth.tar.gz
tar -xzf com.corsixth.corsixth.tar.gz -C ~/.var/app/
rm com.corsixth.corsixth.tar.gz

# Devilutionx
flatpak install -y flathub org.diasurgical.DevilutionX
wget https://github.com/B4rabbas/wargus/releases/download/1/devilution.tar.gz
tar -xvf devilution.tar.gz-C ~/.var/app/org.diasurgical.DevilutionX/data/diasurgical/
rm devilution.tar.gz

# Flare RPG
flatpak install -y flathub org.flarerpg.Flare

#Gods
flatpak install -y flathub io.github.jotd666.gods-deluxe

# gzdoom
wget $(curl -s https://api.github.com/repos/ZDoom/gzdoom/releases/latest | grep "browser_download_url.*.deb" | cut -d '"' -f 4)
sudo dpkg -i *.deb
rm *.deb
wget https://github.com/B4rabbas/wargus/releases/download/1/doom.tar.gz.partaa
wget https://github.com/B4rabbas/wargus/releases/download/1/doom.tar.gz.partab
cat doom.tar.gz.part* | sudo tar -xzvf - -C /usr/share/games/
rm doom.tar.gz.partaa
rm doom.tar.gz.partab
wget https://github.com/B4rabbas/wargus/releases/download/1/gzdoom.tar.gz
tar -xzf gzdoom.tar.gz -C ~/.config/
rm gzdoom.tar.gz
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Alien Eradication\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/ALIENS_ERADICATION_TC_2_0.pk3 /usr/share/games/doom/ERADICATION_MAPSET_2_0.WAD\nCategories=Game;' | sudo tee /usr/share/applications/alien_eradication.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Alien Eradication Trilogy\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/ALIENS_ERADICATION_TC_2_0.pk3 /usr/share/games/doom/ALIENSERADICATIONRC2.wad\nCategories=Game;' | sudo tee /usr/share/applications/alien_eradication_RC2.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Ashes 1 - 2063\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/Ashes2063Enriched2_23.pk3\nCategories=Game;' | sudo tee /usr/share/applications/Ashes_1_2063.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Ashes 2 - Afterglow\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/AshesAfterglow1_10.pk3\nCategories=Game;' | sudo tee /usr/share/applications/Ashes_2_Afterglow.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Strife - Quest for the Sigil\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/strife1.wad -file /usr/share/games/doom/sve.wad /usr/share/games/doom/reikallstrifevoxels.pk3\nCategories=Game;' | sudo tee /usr/share/applications/strife.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=REKKR\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/Doom.wad -file /usr/share/games/doom/REKKR.wad /usr/share/games/doom/Rekkr_HD_music.wad\nCategories=Game;' | sudo tee /usr/share/applications/REKKR.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Strange Aeons\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/strangeaeonsexp.pk3 /usr/share/games/doom/HighNoonDrifter-v1.2c.pk3 /usr/share/games/doom/strangeaeons-drifter-patch.pk3\nCategories=Game;' | sudo tee /usr/share/applications/strangeaeons.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Pirates !\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/Pirates!.wad /usr/share/games/doom/HighNoonDrifter-v1.2c.pk3 /usr/share/games/doom/HighSeasDrifter.wad\nCategories=Game;' | sudo tee /usr/share/applications/Pirates.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Inquisitor 3D\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/inqstr3d.pk3\nCategories=Game;' | sudo tee /usr/share/applications/inquisitor3.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Snap The Sentinel\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/snapgame.ipk3\nCategories=Game;' | sudo tee /usr/share/applications/snapsentinel.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Jump Wad\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/JUMPWAD.wad\nCategories=Game;' | sudo tee /usr/share/applications/jumpwad.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Siren (0.6)\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/Siren-0.6a.pk3\nCategories=Game;' | sudo tee /usr/share/applications/siren.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=MyHouse.wad\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/myhouse.pk3\nCategories=Game;' | sudo tee /usr/share/applications/myhouse.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Castlevania Simon s Destiny\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/Castlevania.ipk3\nCategories=Game;' | sudo tee /usr/share/applications/simondestiny.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=The Adventures of Square\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/square1.pk3\nCategories=Game;' | sudo tee /usr/share/applications/adventuresofsquare.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Abysm 2 - Infernal Contract\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/doom/Abysm_2_-_Infernal_Contract_v1.3.2.pk3\nCategories=Game;' | sudo tee /usr/share/applications/Abysm_2_-_Infernal_Contract.desktop
sudo wget https://github.com/pa1nki113r/Project_Brutality/archive/refs/heads/master.zip -P /usr/share/games/doom
wget https://github.com/B4rabbas/wargus/releases/download/1/brutality.tar.gz.part000
wget https://github.com/B4rabbas/wargus/releases/download/1/brutality.tar.gz.part001
cat brutality.tar.gz.part* | sudo tar -xzvf - -C /usr/share/games/
rm brutality.tar*
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Brutality - METTRE\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/brutality/METTRE /usr/share/games/doom/master.zip /usr/share/games/brutality/DestroyableDecorationNeuralPack4x.pk3 /usr/share/games/brutality/GREYHELMETANIMATIONUPSCALE.pk3 /usr/share/games/brutality/PB_3.0_NeuralPack.pk3\nCategories=Game;' | sudo tee /usr/share/applications/METTRE.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Brutality - Doom Dissension\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/brutality/DISSENSIONv1.3Remaster.wad /usr/share/games/doom/master.zip /usr/share/games/brutality/DestroyableDecorationNeuralPack4x.pk3 /usr/share/games/brutality/GREYHELMETANIMATIONUPSCALE.pk3 /usr/share/games/brutality/PB_3.0_NeuralPack.pk3\nCategories=Game;' | sudo tee /usr/share/applications/doomdissension.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Brutality - The All Realms HEX\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file vALLrealmshex.pk3 /usr/share/games/doom/master.zip /usr/share/games/brutality/DestroyableDecorationNeuralPack4x.pk3 /usr/share/games/brutality/GREYHELMETANIMATIONUPSCALE.pk3 /usr/share/games/brutality/PB_3.0_NeuralPack.pk3\nCategories=Game;' | sudo tee /usr/share/applications/ALLrealmshex.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Brutality - Unfamiliar\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/brutality/UF_Ultimate.pk3 /usr/share/games/doom/master.zip /usr/share/games/brutality/DestroyableDecorationNeuralPack4x.pk3 /usr/share/games/brutality/GREYHELMETANIMATIONUPSCALE.pk3 /usr/share/games/brutality/PB_3.0_NeuralPack.pk3\nCategories=Game;' | sudo tee /usr/share/applications/unfamiliar.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Brutality - Elementalism\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/brutality/Elementalism_Phase1_Full_Release_v1.3.pk3 /usr/share/games/doom/master.zip /usr/share/games/brutality/DestroyableDecorationNeuralPack4x.pk3 /usr/share/games/brutality/GREYHELMETANIMATIONUPSCALE.pk3 /usr/share/games/brutality/PB_3.0_NeuralPack.pk3\nCategories=Game;' | sudo tee /usr/share/applications/elementalism.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Brutality - Declared New Apocalypse\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/brutality/DNA.pk3 /usr/share/games/doom/master.zip /usr/share/games/brutality/DestroyableDecorationNeuralPack4x.pk3 /usr/share/games/brutality/GREYHELMETANIMATIONUPSCALE.pk3 /usr/share/games/brutality/PB_3.0_NeuralPack.pk3\nCategories=Game;' | sudo tee /usr/share/applications/dna-brutality.desktop
sudo wget https://github.com/B4rabbas/wargus/releases/download/1/DBP37_AUGZEN.tar.gz -P /usr/share/games
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Augeur Zenith\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/DBP37_AUGZEN/DBP37_AUGZEN.wad /usr/share/games/DBP37_AUGZEN/DBP37_EDGEBreakingGlass.wad /usr/share/games/DBP37_AUGZEN/DBP37_AlternateBlaster.wad /usr/share/games/DBP37_AUGZEN/flashlight_plus_plus_v8_5.pk3 /usr/share/games/DBP37_AUGZEN/Meat_Grinder_Enemies.pk3 /usr/share/games/DBP37_AUGZEN/fullscrn_huds.pk3\nCategories=Game;' | sudo tee /usr/share/applications/auger-zenith.desktop
echo -e '[Desktop Entry]\nVersion=1.0\nType=Application\nName=Augeur Zenith - Raging Bull\nIcon=redeclipse\nExec=gzdoom -iwad /usr/share/games/doom/DOOM2.WAD -file /usr/share/games/DBP37_AUGZEN/DBP37_AUGZEN.wad /usr/share/games/DBP37_AUGZEN/DBP37_EDGEBreakingGlass.wad /usr/share/games/DBP37_AUGZEN/DBP37_AlternateBlaster.wad /usr/share/games/DBP37_AUGZEN/flashlight_plus_plus_v8_5.pk3 /usr/share/games/DBP37_AUGZEN/MACE_LFW_RagingBull.pk3 /usr/share/games/DBP37_AUGZEN/Meat_Grinder_Enemies.pk3 /usr/share/games/DBP37_AUGZEN/fullscrn_huds.pk3\nCategories=Game;' | sudo tee /usr/share/applications/auger-zenith-ragingbull.desktop


# Hedgewars
flatpak install -y flathub org.hedgewars.Hedgewars

# Mines
sudo nala install -y gnome-mines

# Minetest (avec mineclone2)
flatpak install -y flathub net.minetest.Minetest
git clone ~/.var/app/net.minetest.Minetest/data/.minetest/mods/
git clone https://git.minetest.land/MineClone2/MineClone2.git ~/.var/app/net.minetest.Minetest/.minetest/games/MineClone2

# Nanosaur 2
flatpak install flathub -y io.jor.nanosaur2

# Neverball
sudo nala install -y neverball

# OpenArena
flatpak install -y flathub io.github.ec_.Quake3e.OpenArena

# OpenTTD
sudo nala install -y openttd openttd-openmsx openttd-opengfx openttd-opensfx

# Openmw (Morrowind)
flatpak install -y flathub org.openmw.OpenMW
wget https://github.com/B4rabbas/wargus/releases/download/1/Morrowind_part.aa
wget https://github.com/B4rabbas/wargus/releases/download/1/Morrowind_part.ab
cat Morrowind_part.* > Morrowind.tar.gz
wget https://github.com/B4rabbas/wargus/releases/download/1/org.openmw.OpenMW.tar.gz
rm Morrowind_part.aa
rm Morrowind_part.ab
sudo tar -xzf Morrowind.tar.gz -C /usr/share/games/
rm Morrowind.tar.gz
tar -xzf org.openmw.OpenMW.tar.gz ~/.var/app
rm org.openmw.OpenMW.tar.gz

# Open RCT2 (Roller Coaster Tycoon 2)
sudo add-apt-repository -y ppa:openrct2/nightly
sudo nala update
sudo nala install -y openrct2
wget https://github.com/B4rabbas/wargus/releases/download/1/OpenRCT2.tar.gz
tar -xzf OpenRCT2.tar.gz -C ~/.config/
rm OpenRCT2.tar.gz

# Pingus (lemmings)
sudo nala install -y pingus

# Pushover (jeu de domino)
sudo nala install -y pushover

# Puyo VS
sudo nala install -y libaudio-dev manpages-dev man-db manpages-posix-dev libx11-dev libfftw3-dev sox libsox-dev libsox-fmt-all build-essential qtbase5-dev qtchooser qt5-qmake libc6
wget https://github.com/B4rabbas/wargus/releases/download/1/puyovs2.tar.gz
tar xzf puyovs2.tar.gz
rm puyovs2.tar.gz
cd puyovs2
cp "PuyoVS\Settings.json" ~/.local/share/
sudo cp "Data/pvs2.png" /usr/share/icons/
sudo mkdir /usr/local/games/Puyo\ Puyo\ Vs\ 2/
sudo cp -r "Data" /usr/local/games/Puyo\ Puyo\ Vs\ 2/Data/
sudo cp "Puyo" /bin/
echo -e "[Desktop Entry]\nVersion=b31\nType=Application\nName=Puyo Puyo Vs 2\nComment=Un jeu de Puyo Puyo\nExec=/bin/Puyo\nIcon=/usr/share/icons/pvs2.png\nPath=\nTerminal=false\nStartupNotify=false\nCategories=Game" | sudo tee /usr/share/applications/PuyoPuyoVs2.desktop > /dev/null && sudo chmod +x /usr/share/applications/PuyoPuyoVs2.desktop
cd
rm -r puyovs2

# Quarry
sudo nala install -y quarry

# Raze (famille dukenukem)
sudo nala install -y libsdl2-dev libgtk-3-dev libglib2.0-dev gxmessage
wget $(curl -s https://api.github.com/repos/ZDoom/Raze/releases/latest | grep "browser_download_url.*tar.xz" | cut -d '"' -f 4)
sudo mkdir -p /usr/share/games/raze-engine
sudo mkdir -p /usr/share/games/raze
tar -xf *.tar.xz
sudo cp -a Raze*/* /usr/share/games/raze-engine
rm -r *.tar.xz
rm -r Raze*
wget https://github.com/B4rabbas/wargus/releases/download/1/raze-engine.tar.gz.aa
wget https://github.com/B4rabbas/wargus/releases/download/1/raze-engine.tar.gz.ab
cat raze-engine.tar.gz.* > raze-engine.tar.gz
tar -xzvf raze-engine.tar.gz
sudo cp -a raze-engine/* /usr/share/games/raze
rm raze-engine.tar.gz.aa
rm raze-engine.tar.gz.ab
rm raze-engine.tar.gz
rm -r raze-engine
echo -e "[Desktop Entry]\nName=Raze\nExec=/usr/share/games/raze-engine/raze\nIcon=redeclipse\nType=Application\nCategories=Game" | sudo tee /usr/share/applications/raze.desktop > /dev/null
wget https://github.com/B4rabbas/wargus/releases/download/1/raze.tar.gz
tar -xzvf raze.tar.gz -C ~/.config/
rm raze.tar.gz

# Shattered Pixel Dungeon
flatpak install -y flathub com.shatteredpixel.shatteredpixeldungeon

# Solitaire
sudo nala install -y aisleriot

# SRB2
flatpak install -y flathub org.srb2.SRB2

# SRB2 Kart A retester
wget https://github.com/B4rabbas/Kart-Public/releases/download/v1.6/installer.Sonic.Kart.v1.6.galaxy.redux.v1.2.azerty.linux64.tar.gz
cd "(installer) Sonic Kart v1.6 galaxy redux v1.2 azerty linux64"
sudo nala install -y libgme-dev libsdl2-mixer-dev libsdl2-dev zlib1g-dev libpng-dev nasm build-essential git libcurl4 libcurl4-openssl-dev xdotool unclutter
wget https://github.com/discord/discord-rpc/releases/download/v3.4.0/discord-rpc-linux.zip
unzip discord-rpc-linux.zip
sudo cp ./discord-rpc/linux-dynamic/include/*.h /usr/include/
sudo cp ./discord-rpc/linux-dynamic/lib/libdiscord-rpc.so /usr/lib/
rm -r ./discord-rpc
rm discord-rpc-linux.zip
sudo mkdir -p /usr/share/games
sudo mkdir -p /usr/games
sudo cp ./DATA/usrgame/srb2kart /usr/games/
sudo cp ./DATA/usrgame/srb2kartdx /usr/games/
sudo cp ./DATA/usrgame/srb2kart-fix /usr/games/
sudo cp -r ./DATA/srb2kart /usr/share/games/
sudo cp -a ./DATA/usrshareapp/* /usr/share/applications/
sudo mkdir ~/.srb2kart/
rsync -a ./DATA/mods/ ~/.srb2kart
(srb2kart & sleep 5 && pkill -SIGKILL srb2kart)
sudo rsync -a ./DATA/addmodels/ /usr/share/games/srb2kart

# Star Wars - Dark Forces A retester
#Dependencies
sudo apt install y libdevil-dev libasound2-dev
# Compile & install rt audio
wget https://www.music.mcgill.ca/~gary/rtaudio/release/rtaudio-5.2.0.tar.gz
tar -xvf rtaudio-5.2.0.tar.gz
cd rtaudio-5.2.0
./configure
make
sudo make install
cd
rm rtaudio-5.2.0.tar.gz
rm -r rtaudio-5.2.0
# compile and install rtmidi
wget https://www.music.mcgill.ca/~gary/rtmidi/release/rtmidi-5.0.0.tar.gz
tar -xvf rtmidi-5.0.0.tar.gz
cd rtmidi-5.0.0
./configure
make
sudo make install
cd
rm rtmidi-5.0.0.tar.gz
rm -r rtmidi-5.0.0
# TheForceEngine (Dark Force et dans le futur faire lanceur pour Outlaws)
git clone https://github.com/luciusDXL/TheForceEngine.git
cd TheForceEngine
mkdir tfe-build
cd tfe-build
cmake -S ~/TheForceEngine/
make
sudo make install
echo -e "[Desktop Entry]\nType=Application\nName=Jedi Knight - Dark Forces\nExec=theforceengine\nCategories=Game;\nIcon=redeclipse" | sudo tee /usr/share/applications/darkforce.desktop
wget https://github.com/B4rabbas/wargus/releases/download/1/DarkForce.tar.gz
sudo tar -xvf DarkForce.tar.gz -C /usr/share/games
wget https://github.com/B4rabbas/wargus/releases/download/1/Outlaws.tar.gz
sudo tar -xvf Outlaws.tar.gz -C /usr/share/games
rm DarkForce.tar.gz
rm Outlaws.tar.gz

# Star Wars Jedi Knight : Dark Forces II & Mysteries of the Sith
flatpak install -y flathub org.openjkdf2.OpenJKDF2
wget https://github.com/B4rabbas/wargus/releases/download/1/org.openjkdf2.OpenJKDF2.tar.gz
tar -xvf org.openjkdf2.OpenJKDF2.tar.gz -C ~/.var/app
sudo rm /usr/share/applications/org.openjkdf2.OpenJKDF2.desktop

# Star Wars Jedi Knight II: Jedi Outcast (2002) - Le moteur OpenJK peut également être utilisé pour jouer à Jedi Outcast.
wget https://github.com/B4rabbas/wargus/releases/download/1/openjo.tar.gz
wget https://github.com/B4rabbas/wargus/releases/download/1/star-wars-jedi-knight-ii-jedi-outcast.tar.gz
sudo tar -xvf star-wars-jedi-knight-ii-jedi-outcast.tar.gz -C /usr/share/games/
tar -xvf openjo.tar.gz -C ~/.local/share/
sudo sh -c 'echo "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Star Wars Jedi Knight - Jedi Outcast\nExec=/usr/share/games/star-wars-jedi-knight-ii-jedi-outcast/openjo_sp.x86_64\nIcon=redeclipse\nCategories=Game;" > /usr/share/applications/star-wars-jedi-outcast.desktop'
rm openjo.tar.gz
rm star-wars-jedi-knight-ii-jedi-outcast.tar.gz

# Star Wars Jedi Knight: Jedi Academy (2003)
wget https://github.com/B4rabbas/wargus/releases/download/1/jedi-knight-jedi-academy.tar.gz.partaa
wget https://github.com/B4rabbas/wargus/releases/download/1/jedi-knight-jedi-academy.tar.gz.partab
wget https://github.com/B4rabbas/wargus/releases/download/1/openjk.tar.gz
cat jedi-knight-jedi-academy.tar.gz.part* > jedi-knight-jedi-academy.tar.gz
sudo tar -xvf jedi-knight-jedi-academy.tar.gz -C /usr/share/games/
tar -xvf openjk.tar.gz -C ~/.local/share/
rm openjk.tar.gz
rm jedi-knight-jedi-academy.tar.gz.part**
rm jedi-knight-jedi-academy.tar.gz
sudo sh -c 'echo "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Star Wars Jedi Knight - Jedi Academy\nExec=/usr/share/games/jedi-knight-jedi-academy/openjk_sp.x86_64\nIcon=redeclipse\nCategories=Game;" > /usr/share/applications/star-wars-jedi-academy.desktop'
sudo sh -c 'echo "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Star Wars Jedi Knight - Jedi Academy Multi\nExec=/usr/share/games/jedi-knight-jedi-academy/openjk.x86_64\nIcon=redeclipse\nCategories=Game;" > /usr/share/applications/star-wars-jedi-academy-multi.desktop'

# Stepmania
flatpak install flathub -y com.stepmania.StepMania

# Sudoku
sudo nala install -y gnome-sudoku

# Tanks of Freedom
flatpak install flathub -y in.p1x.TanksOfFreedom

# Tank Warriors
flatpak install -y flathub com.endlessnetwork.tankwarriors

# Teeworlds
flatpak install -y flathub com.teeworlds.Teeworlds
flatpak install -y flathub tw.ddnet.ddnet

# Total Chaos
flatpak install -y flathub com.moddb.TotalChaos

# Total Chaos Retro
flatpak install -y flathub com.moddb.TotalChaosRetro

# UltraStar Deluxe
flatpak install flathub -y eu.usdx.UltraStarDeluxe

# Unvanquished
flatpak install -y flathub net.unvanquished.Unvanquished

# Warcraft (War1gus)
sudo add-apt-repository -y ppa:stratagus
sudo nala update
sudo nala install -y war1gus
wget https://github.com/B4rabbas/wargus/releases/download/1/war1gus.tar.gz
sudo tar -xzf war1gus.tar.gz -C /usr/share/games/stratagus/
sudo tar -xzf war1gus.tar.gz -C /usr/share/games/stratagus/
rm war1gus.tar.gz

# Warcraft II (Wargus)
sudo add-apt-repository -y ppa:stratagus
sudo nala update
sudo nala install -y wargus
wget https://github.com/B4rabbas/wargus/releases/download/1/wargus.tar.gz
sudo tar -xzf wargus.tar.gz -C /usr/share/games/stratagus/
sudo tar -xzf wargus.tar.gz -C /usr/share/games/stratagus/
rm wargus.tar.gz

# Warsow
flatpak install -y flathub net.warsow.Warsow

# War Thunder
flatpak install -y flathub net.gaijin.WarThunder

# Warzone 2100
sudo nala purge -y warzone2100
wget https://nav.dl.sourceforge.net/project/warzone2100/releases/4.3.5/warzone2100_ubuntu20.04_amd64.deb
sudo nala install -y ./warzone2100_ubuntu20.04_amd64.deb
rm warzone2100_ubuntu20.04_amd64.deb
wget https://altushost-swe.dl.sourceforge.net/project/warzone2100/warzone2100/Videos/high-quality-en/sequences.wz -P ~/.local/share/warzone2100

# Wolfenstein Blades of Agony
flatpak install -y flathub com.realm667.Wolfenstein_Blade_of_Agony

# Xonotic
flatpak install flathub -y org.xonotic.Xonotic



primehack (pour les metroid prime)

Ship of Harkinian zelda ocarina of time

Zelda3 - zelda link to the past

OpenGOAL Jak & Daxter

D2X-XL Descent

DXX-Rebirth Descent II

dhewm3 Doom 3

ECWolf les wolfenstein + 3S Noah's ark

Freespace 2 Source Code Project - FreeSpace II

iortcw - Return to Castle Wolfenstein

Ikemen GO - essayer d'apprendre à s'en servir pour le jeu dragon ball et l'autre de combat card stories je crois

dhewm3 Doom 3 (voir s'il peut faire tourner prey)

OpenXRay  - S.T.A.L.K.E.R.: Clear Sky, S.T.A.L.K.E.R.: Call of Pripyat

Perfect Dark Perfect Dark

Chercher le meilleur port de Powerslave EX

Quakespasm ou Tyrquake - quake 1 -voir quake 2 et 4 aussi)

RBDOOM-3-BFG - Voir s'il peut faire tourner prey

rottexpr - Rise of the Triad: Dark War

vitaQuake II Yamagi Quake II - quake II

Xash3D Half Life

R.E.L.I.V.E Oddworld: Abe's Oddysee, Oddworld: Abe's Exoddus

rawgl another world

REminiscence flashback

RSDK Sonic the Hedgehog 1–2, Sonic CD

Sonic 3 A.I.R. (Angel Island Revisited sonic 3

https://github.com/SaturnSH2x2/RSDKv5-Decompilation  sonic mania (à tester)

Super Mario 64 Port https://emulation.gametechwiki.com/index.php/Super_Mario_64_Port

xrick rick dangerous

OpenC1 carmageddon

RVGL Re-Volt

REDriver2 Driver 2

Daggerfall Unity The Elder Scrolls II: Daggerfall

OpenGothic ou REGoth Gothic II

OpenTyrian Tyrian

OpenXcom

mega glest : https://megaglest.org/download

prince of persia sdlpop :
wget https://www.popot.org/get_the_games/software/SDLPoP/SDLPoP-1.23.zip

GEMRB (les baldures gate et autres jeux)
