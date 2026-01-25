# Liste des extensions

On créé nos trois profils `Personnel` (Profile 2), `Professionnel`(Profile 3), `Test`(Profile 4) (on supprime le profil par défaut pour repartir de zéro)

puis on installe le tunnel pour les extensions sur chaque profil

```bash
/usr/bin/flatpak run io.github.ungoogled_software.ungoogled_chromium \
--profile-directory="Profile 2" \
https://github.com/NeverDecaf/chromium-web-store/releases/latest
/usr/bin/flatpak run io.github.ungoogled_software.ungoogled_chromium \
--profile-directory="Profile 3" \
https://github.com/NeverDecaf/chromium-web-store/releases/latest
/usr/bin/flatpak run io.github.ungoogled_software.ungoogled_chromium \
--profile-directory="Profile 4" \
https://github.com/NeverDecaf/chromium-web-store/releases/latest
```

Ici pour lister les noms de profils

```bash
ls ~/.var/app/io.github.ungoogled_software.ungoogled_chromium/config/chromium | grep '^Profile\|^Default'
```

J'utilise `Personnel` (Profile 2), `Professionnel`(Profile 3), `Test`(Profile 4)

## Profil perso

- [Allow Right-Click](https://chromewebstore.google.com/detail/allow-right-click/hnafhkjheookmokbkpnfpmemlppjdgoi)
- [Brave Search](https://chromewebstore.google.com/detail/brave-search-official-pri/imoinfjmpciaeboldbfaakmmjkijkeff)
- [Bypass Paywalls Clean (bypass-paywalls-chrome-clean-latest.crx)](https://gitflic.ru/project/magnolia1234/bpc_uploads)
- [Consent-O-Matic](https://chromewebstore.google.com/detail/consent-o-matic/mdjildafknihdffpkfmmpnpoiajfjnjd)
- [Copyfish](https://chromewebstore.google.com/detail/copyfish-%F0%9F%90%9F-free-ocr-soft/eenjdnjldapjajjofmldgmkjaienebbj)
- [Custom Chrome - Extension Manager](https://chromewebstore.google.com/detail/custom-chrome-extension-m/balnpimdnhfiodmodckhkgneejophhhm)
- [LanguageTool](https://chromewebstore.google.com/detail/correcteur-d%E2%80%99orthographe/oldceeleldhonbafppcapldpdifcinji)
- [Dark Reader](https://chromewebstore.google.com/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh)
- [Download with JDownloader](https://chromewebstore.google.com/detail/download-with-jdownloader/jfpmbokkdeapjommajdfmmheiiakdlgo)
- [Easy Screenshot](https://chromewebstore.google.com/detail/easy-screenshot-a-web-cli/ilihnlnookgcpkpnjafigbkdniceonip)
- [Enregistrer l'image sous](https://chromewebstore.google.com/detail/enregistrer-limage-sous-j/gabfmnliflodkdafenbcpjdlppllnemd)
- [External Application Launcher](https://chromewebstore.google.com/detail/external-application-laun/bifmfjgpgndemajpeeoiopbeilbaifdo)
- [External Application Launcher clone](https://chromewebstore.google.com/detail/external-application-laun/bifmfjgpgndemajpeeoiopbeilbaifdo)
- [floccus booklarks sync](https://chromewebstore.google.com/detail/floccus-bookmarks-sync/fnaicdffflnofjppbagibeoednhnbjhg)
- [FoxyProxy](https://chromewebstore.google.com/detail/foxyproxy/gcknhkkoolaabfmlnjonogaaifnjlfnp)
- [Highlighter](https://chromewebstore.google.com/detail/highlighter/fdfcjfoifbjplmificlkdfneafllkgmn)
- [Keepa](https://chromewebstore.google.com/detail/keepa-amazon-price-tracke/neebplgakaahbhdphmkckjjcegoiijjo)
- [KeepassXC-Browser](https://chromewebstore.google.com/detail/keepassxc-browser/oboonakemofpalcgghocfoadofidjkkk)
- [Mobile View Switcher](https://chromewebstore.google.com/detail/mobile-view-switcher/bmhfelbhbkeoldaiphchjibggnoodpcj)
- [MyJDownloader](https://chromewebstore.google.com/detail/myjdownloader-browser-ext/fbcohnmimjicjdomonkcbcpbpnhggkip)
- [Open bookmarks in new tab](https://chromewebstore.google.com/detail/open-bookmarks-in-a-new-t/mcecogccjlcplcccpnejnldpijppkfil)
- [Popup Blocker (strict)](https://chromewebstore.google.com/detail/popup-blocker-strict/aefkmifgmaafnojlojpnekbpbmjiiogg)
- [Proton VPN](https://chromewebstore.google.com/detail/proton-vpn-fast-secure/jplgfhpmjnbigmhklmmbgecoobifkmpa)
- [Remove YouTube Video Blur](https://chromewebstore.google.com/detail/youtube-blur-glow-remover/faocfjdofbgohcjplmlkggbcgkgdhpjp)
- [Return Youtube Dislike](https://chromewebstore.google.com/detail/return-youtube-dislike/gebbhagfogifgggkldgodflihgfeippi)
- [Ruffle](https://chromewebstore.google.com/detail/ruffle-flash-emulator/donbcfbmhbcapadipfkeojnmajbakjdc)
- [Search by image](https://chromewebstore.google.com/detail/search-by-image/cnojnbdhbhnkbcieeekonklommdnndci)
- [Sponsorblock](https://chromewebstore.google.com/detail/sponsorblock-pour-youtube/mnjggcdmjocbbbhaepdhchncahnbgone)
- [uBlock Origin](https://chromewebstore.google.com/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
- [Violentmonkey](https://chromewebstore.google.com/detail/violentmonkey/jinjaccalgkegednnccohejagnlnfdag)
- [Vue du lecteur](https://chromewebstore.google.com/detail/vue-du-lecteur/fachffmaagpajehggpkaigkacdjhkkdn)
- [Wayback machine](https://chromewebstore.google.com/detail/wayback-machine/fpnmgdkabkmnadcjpehmlllkndpkmiak)
- [Wikiwand](https://chromewebstore.google.com/detail/wikiwand-elevate-wikipedi/emffkefkbkpkgpdeeooapgaicgmcbolj)
- [Youtube Screenshot](https://chromewebstore.google.com/detail/screenshot-youtube/gjoijpfmdhbjkkgnmahganhoinjjpohk)
- [Youtube-shorts block](https://chromewebstore.google.com/detail/youtube-shorts-block/jiaopdjbehhjgokpphdfgmapkobbnmjp)



```bash
/usr/bin/flatpak run io.github.ungoogled_software.ungoogled_chromium \
--profile-directory="Profile 2" \
https://chromewebstore.google.com/detail/allow-right-click/hnafhkjheookmokbkpnfpmemlppjdgoi \
https://chromewebstore.google.com/detail/brave-search-official-pri/imoinfjmpciaeboldbfaakmmjkijkeff \
https://gitflic.ru/project/magnolia1234/bpc_uploads \
https://chromewebstore.google.com/detail/consent-o-matic/mdjildafknihdffpkfmmpnpoiajfjnjd \
https://chromewebstore.google.com/detail/copyfish-%F0%9F%90%9F-free-ocr-soft/eenjdnjldapjajjofmldgmkjaienebbj \
https://chromewebstore.google.com/detail/custom-chrome-extension-m/balnpimdnhfiodmodckhkgneejophhhm \
https://chromewebstore.google.com/detail/correcteur-d%E2%80%99orthographe/oldceeleldhonbafppcapldpdifcinji \
https://chromewebstore.google.com/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh \
https://chromewebstore.google.com/detail/download-with-jdownloader/jfpmbokkdeapjommajdfmmheiiakdlgo \
https://chromewebstore.google.com/detail/easy-screenshot-a-web-cli/ilihnlnookgcpkpnjafigbkdniceonip \
https://chromewebstore.google.com/detail/enregistrer-limage-sous-j/gabfmnliflodkdafenbcpjdlppllnemd \
https://chromewebstore.google.com/detail/external-application-laun/bifmfjgpgndemajpeeoiopbeilbaifdo \
https://chromewebstore.google.com/detail/external-application-laun/bifmfjgpgndemajpeeoiopbeilbaifdo \
https://chromewebstore.google.com/detail/floccus-bookmarks-sync/fnaicdffflnofjppbagibeoednhnbjhg \
https://chromewebstore.google.com/detail/foxyproxy/gcknhkkoolaabfmlnjonogaaifnjlfnp \
https://chromewebstore.google.com/detail/highlighter/fdfcjfoifbjplmificlkdfneafllkgmn \
https://chromewebstore.google.com/detail/keepa-amazon-price-tracke/neebplgakaahbhdphmkckjjcegoiijjo \
https://chromewebstore.google.com/detail/keepassxc-browser/oboonakemofpalcgghocfoadofidjkkk \
https://chromewebstore.google.com/detail/mobile-view-switcher/bmhfelbhbkeoldaiphchjibggnoodpcj \
https://chromewebstore.google.com/detail/myjdownloader-browser-ext/fbcohnmimjicjdomonkcbcpbpnhggkip \
https://chromewebstore.google.com/detail/open-bookmarks-in-a-new-t/mcecogccjlcplcccpnejnldpijppkfil \
https://chromewebstore.google.com/detail/popup-blocker-strict/aefkmifgmaafnojlojpnekbpbmjiiogg \
https://chromewebstore.google.com/detail/proton-vpn-fast-secure/jplgfhpmjnbigmhklmmbgecoobifkmpa \
https://chromewebstore.google.com/detail/youtube-blur-glow-remover/faocfjdofbgohcjplmlkggbcgkgdhpjp \
https://chromewebstore.google.com/detail/return-youtube-dislike/gebbhagfogifgggkldgodflihgfeippi \
https://chromewebstore.google.com/detail/ruffle-flash-emulator/donbcfbmhbcapadipfkeojnmajbakjdc \
https://chromewebstore.google.com/detail/search-by-image/cnojnbdhbhnkbcieeekonklommdnndci \
https://chromewebstore.google.com/detail/sponsorblock-pour-youtube/mnjggcdmjocbbbhaepdhchncahnbgone \
https://chromewebstore.google.com/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm \
https://chromewebstore.google.com/detail/violentmonkey/jinjaccalgkegednnccohejagnlnfdag \
https://chromewebstore.google.com/detail/vue-du-lecteur/fachffmaagpajehggpkaigkacdjhkkdn \
https://chromewebstore.google.com/detail/wayback-machine/fpnmgdkabkmnadcjpehmlllkndpkmiak \
https://chromewebstore.google.com/detail/wikiwand-elevate-wikipedi/emffkefkbkpkgpdeeooapgaicgmcbolj \
https://chromewebstore.google.com/detail/screenshot-youtube/gjoijpfmdhbjkkgnmahganhoinjjpohk \
https://chromewebstore.google.com/detail/youtube-shorts-block/jiaopdjbehhjgokpphdfgmapkobbnmjp \
https://yggland.fr/userscripts/YGGDark.user.js \
https://yggland.fr/userscripts/YGGTools.user.js \
https://greasyfork.org/en/scripts/512021-pixeldrain-download-bypass-with-zip-file-content-support
```

## Profil pro

- [Allow Right-Click](https://chromewebstore.google.com/detail/allow-right-click/hnafhkjheookmokbkpnfpmemlppjdgoi)
- [Brave Search](https://chromewebstore.google.com/detail/brave-search-official-pri/imoinfjmpciaeboldbfaakmmjkijkeff)
- [Consent-O-Matic](https://chromewebstore.google.com/detail/consent-o-matic/mdjildafknihdffpkfmmpnpoiajfjnjd)
- [Custom Chrome - Extension Manager](https://chromewebstore.google.com/detail/custom-chrome-extension-m/balnpimdnhfiodmodckhkgneejophhhm)
- [LanguageTool](https://chromewebstore.google.com/detail/correcteur-d%E2%80%99orthographe/oldceeleldhonbafppcapldpdifcinji)
- [Dark Reader](https://chromewebstore.google.com/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh)
- [Easy Screenshot](https://chromewebstore.google.com/detail/easy-screenshot-a-web-cli/ilihnlnookgcpkpnjafigbkdniceonip)
- [Enregistrer l'image sous](https://chromewebstore.google.com/detail/enregistrer-limage-sous-j/gabfmnliflodkdafenbcpjdlppllnemd)
- [floccus booklarks sync](https://chromewebstore.google.com/detail/floccus-bookmarks-sync/fnaicdffflnofjppbagibeoednhnbjhg)
- [Highlighter](https://chromewebstore.google.com/detail/highlighter/fdfcjfoifbjplmificlkdfneafllkgmn)
- [KeepassXC-Browser](https://chromewebstore.google.com/detail/keepassxc-browser/oboonakemofpalcgghocfoadofidjkkk)
- [Open bookmarks in new tab](https://chromewebstore.google.com/detail/open-bookmarks-in-a-new-t/mcecogccjlcplcccpnejnldpijppkfil)
- [Popup Blocker (strict)](https://chromewebstore.google.com/detail/popup-blocker-strict/aefkmifgmaafnojlojpnekbpbmjiiogg)
- [Remove YouTube Video Blur](https://chromewebstore.google.com/detail/youtube-blur-glow-remover/faocfjdofbgohcjplmlkggbcgkgdhpjp)
- [Return Youtube Dislike](https://chromewebstore.google.com/detail/return-youtube-dislike/gebbhagfogifgggkldgodflihgfeippi)
- [Search by image](https://chromewebstore.google.com/detail/search-by-image/cnojnbdhbhnkbcieeekonklommdnndci)
- [Sponsorblock](https://chromewebstore.google.com/detail/sponsorblock-pour-youtube/mnjggcdmjocbbbhaepdhchncahnbgone)
- [uBlock Origin](https://chromewebstore.google.com/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
- [Violentmonkey](https://chromewebstore.google.com/detail/violentmonkey/jinjaccalgkegednnccohejagnlnfdag)
- [Vue du lecteur](https://chromewebstore.google.com/detail/vue-du-lecteur/fachffmaagpajehggpkaigkacdjhkkdn)
- [Wikiwand](https://chromewebstore.google.com/detail/wikiwand-elevate-wikipedi/emffkefkbkpkgpdeeooapgaicgmcbolj)
- [Youtube Screenshot](https://chromewebstore.google.com/detail/screenshot-youtube/gjoijpfmdhbjkkgnmahganhoinjjpohk)
- [Youtube-shorts block](https://chromewebstore.google.com/detail/youtube-shorts-block/jiaopdjbehhjgokpphdfgmapkobbnmjp)



```bash
/usr/bin/flatpak run io.github.ungoogled_software.ungoogled_chromium \
--profile-directory="Profile 3" \
https://chromewebstore.google.com/detail/allow-right-click/hnafhkjheookmokbkpnfpmemlppjdgoi \
https://chromewebstore.google.com/detail/brave-search-official-pri/imoinfjmpciaeboldbfaakmmjkijkeff \
https://chromewebstore.google.com/detail/consent-o-matic/mdjildafknihdffpkfmmpnpoiajfjnjd \
https://chromewebstore.google.com/detail/custom-chrome-extension-m/balnpimdnhfiodmodckhkgneejophhhm \
https://chromewebstore.google.com/detail/correcteur-d%E2%80%99orthographe/oldceeleldhonbafppcapldpdifcinji \
https://chromewebstore.google.com/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh \
https://chromewebstore.google.com/detail/easy-screenshot-a-web-cli/ilihnlnookgcpkpnjafigbkdniceonip \
https://chromewebstore.google.com/detail/enregistrer-limage-sous-j/gabfmnliflodkdafenbcpjdlppllnemd \
https://chromewebstore.google.com/detail/floccus-bookmarks-sync/fnaicdffflnofjppbagibeoednhnbjhg \
https://chromewebstore.google.com/detail/highlighter/fdfcjfoifbjplmificlkdfneafllkgmn \
https://chromewebstore.google.com/detail/keepassxc-browser/oboonakemofpalcgghocfoadofidjkkk \
https://chromewebstore.google.com/detail/open-bookmarks-in-a-new-t/mcecogccjlcplcccpnejnldpijppkfil \
https://chromewebstore.google.com/detail/popup-blocker-strict/aefkmifgmaafnojlojpnekbpbmjiiogg \
https://chromewebstore.google.com/detail/youtube-blur-glow-remover/faocfjdofbgohcjplmlkggbcgkgdhpjp \
https://chromewebstore.google.com/detail/return-youtube-dislike/gebbhagfogifgggkldgodflihgfeippi \
https://chromewebstore.google.com/detail/search-by-image/cnojnbdhbhnkbcieeekonklommdnndci \
https://chromewebstore.google.com/detail/sponsorblock-pour-youtube/mnjggcdmjocbbbhaepdhchncahnbgone \
https://chromewebstore.google.com/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm \
https://chromewebstore.google.com/detail/violentmonkey/jinjaccalgkegednnccohejagnlnfdag \
https://chromewebstore.google.com/detail/vue-du-lecteur/fachffmaagpajehggpkaigkacdjhkkdn \
https://chromewebstore.google.com/detail/wikiwand-elevate-wikipedi/emffkefkbkpkgpdeeooapgaicgmcbolj \
https://chromewebstore.google.com/detail/screenshot-youtube/gjoijpfmdhbjkkgnmahganhoinjjpohk \
https://chromewebstore.google.com/detail/youtube-shorts-block/jiaopdjbehhjgokpphdfgmapkobbnmjp
```

## Pour test

- [axe DevTools](https://addons.mozilla.org/fr/firefox/addon/axe-devtools/)
- [webhint](https://addons.mozilla.org/fr/firefox/addon/webhint/)

```bash
/usr/bin/flatpak run io.github.ungoogled_software.ungoogled_chromium \
--profile-directory="Profile 4" \
https://chromewebstore.google.com/detail/axe-devtools-web-accessib/lhdoppojpmngadmnindnejefpokejbdd \
https://chromewebstore.google.com/detail/webhint/gccemnpihkbgkdmoogenkbkckppadcag
```

