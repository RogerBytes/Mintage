# Liste des extensions

Ici pour lister les noms de profils

```bash
awk -F= '/^Name=/ {print $2}' ~/.floorp/profiles.ini
```

J'utilise `Personnel`, `Professionnel`, `Test`


## Profil perso

- [Addon Manager](https://addons.mozilla.org/fr/firefox/addon/addons-manager/)
- [Allow Right-Click](https://addons.mozilla.org/fr/firefox/addon/re-enable-right-click/)
- [Brave Search](https://addons.mozilla.org/fr/firefox/addon/bravesearch/)
- [Bypass Paywalls Clean (bypass_paywalls_clean-latest.xpi)](https://gitflic.ru/project/magnolia1234/bpc_uploads)
- [Consent-O-Matic](https://addons.mozilla.org/fr/firefox/addon/consent-o-matic)
- [Copyfish](https://addons.mozilla.org/fr/firefox/addon/copyfish-ocr-software/)
- [LanguageTool](https://addons.mozilla.org/fr/firefox/addon/languagetool/)
- [Dark Reader](https://addons.mozilla.org/fr/firefox/addon/darkreader/)
- [Download with JDownloader](https://addons.mozilla.org/fr/firefox/addon/download-with-jdownloader/)
- [Easy Screenshot](https://addons.mozilla.org/fr/firefox/addon/easyscreenshot/)
- [Enregistrer l'image sous](https://addons.mozilla.org/fr/firefox/addon/siat/)
- [External Application Launcher](https://addons.mozilla.org/fr/firefox/addon/external-application/)
- [External Application Launcher clone](https://addons.mozilla.org/fr/firefox/addon/external-application/)
- [floccus booklarks sync](https://addons.mozilla.org/fr/firefox/addon/floccus/)
- [FoxyProxy](https://addons.mozilla.org/fr/firefox/addon/foxyproxy-standard/)
- [Highlighter + Notes](https://addons.mozilla.org/fr/firefox/addon/highlighter-notes)
- [Keepa](https://addons.mozilla.org/fr/firefox/addon/keepa/)
- [KeepassXC-Browser](https://addons.mozilla.org/fr/firefox/addon/keepassxc-browser/)
- [Load Progress Bar](https://addons.mozilla.org/fr/firefox/addon/load-progress-bar/)
- [Mobile View Switcher](https://addons.mozilla.org/fr/firefox/addon/mobile-view-switcher/)
- [MyJDownloader](https://extensions.jdownloader.org/firefox.xpi)
- [Open bookmarks in new tab](https://addons.mozilla.org/fr/firefox/addon/open-bookmarks-in-a-new-tab/)
- [Popup Blocker (strict)](https://addons.mozilla.org/fr/firefox/addon/popup-blocker/)
- [Proton VPN](https://addons.mozilla.org/fr/firefox/addon/proton-vpn-firefox-extension/)
- [Remove YouTube Video Blur](https://addons.mozilla.org/fr/firefox/addon/remove-youtube-video-blur/)
- [Return Youtube Dislike](https://addons.mozilla.org/fr/firefox/addon/return-youtube-dislikes/)
- [Ruffle](https://addons.mozilla.org/fr/firefox/addon/ruffle_rs/)
- [Search by image](https://addons.mozilla.org/fr/firefox/addon/search_by_image/)
- [Sponsorblock](https://addons.mozilla.org/fr/firefox/addon/sponsorblock/)
- [uBlock Origin](https://addons.mozilla.org/fr/firefox/addon/ublock-origin/)
- [Violentmonkey](https://addons.mozilla.org/fr/firefox/addon/violentmonkey/)
- [Vue du lecteur](https://addons.mozilla.org/fr/firefox/addon/reader-viewer/)
- [Wayback machine](https://addons.mozilla.org/fr/firefox/addon/wayback-machine_new/)
- [Wikiwand](https://addons.mozilla.org/fr/firefox/addon/wikiwand-wikipedia-modernized/)
- [Youtube Screenshot](https://addons.mozilla.org/fr/firefox/addon/youtube-screenshot-button/)
- [Youtube-shorts block](https://addons.mozilla.org/fr/firefox/addon/youtube-shorts-block/)


```bash
pgrep -f 'floorp.*-P "Personnel"' >/dev/null || floorp -P "Personnel" &
sleep 2
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/addons-manager/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/re-enable-right-click/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/bravesearch/
floorp -no-remote -P "Personnel" https://gitflic.ru/project/magnolia1234/bpc_uploads
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/consent-o-matic
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/copyfish-ocr-software/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/languagetool/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/darkreader/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/download-with-jdownloader/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/easyscreenshot/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/siat/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/external-application/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/external-application/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/floccus/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/foxyproxy-standard/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/highlighter-notes
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/keepa/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/keepassxc-browser/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/load-progress-bar/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/mobile-view-switcher/
floorp -no-remote -P "Personnel" https://extensions.jdownloader.org/firefox.xpi
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/open-bookmarks-in-a-new-tab/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/popup-blocker/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/proton-vpn-firefox-extension/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/remove-youtube-video-blur/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/return-youtube-dislikes/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/ruffle_rs/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/search_by_image/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/sponsorblock/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/ublock-origin/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/violentmonkey/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/reader-viewer/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/wayback-machine_new/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/wikiwand-wikipedia-modernized/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/youtube-screenshot-button/
floorp -no-remote -P "Personnel" https://addons.mozilla.org/fr/firefox/addon/youtube-shorts-block/
floorp -no-remote -P "Personnel" https://yggland.fr/userscripts/YGGDark.user.js
floorp -no-remote -P "Personnel" https://yggland.fr/userscripts/YGGTools.user.js
floorp -no-remote -P "Personnel" https://greasyfork.org/en/scripts/512021-pixeldrain-download-bypass-with-zip-file-content-support
```

## Pour pro

- [Addon Manager](https://addons.mozilla.org/fr/firefox/addon/addons-manager/)
- [Allow Right-Click](https://addons.mozilla.org/fr/firefox/addon/re-enable-right-click/)
- [Brave Search](https://addons.mozilla.org/fr/firefox/addon/bravesearch/)
- [Consent-O-Matic](https://addons.mozilla.org/fr/firefox/addon/consent-o-matic)
- [LanguageTool](https://addons.mozilla.org/fr/firefox/addon/languagetool/)
- [Dark Reader](https://addons.mozilla.org/fr/firefox/addon/darkreader/)
- [Easy Screenshot](https://addons.mozilla.org/fr/firefox/addon/easyscreenshot/)
- [Enregistrer l'image sous](https://addons.mozilla.org/fr/firefox/addon/siat/)
- [floccus booklarks sync](https://addons.mozilla.org/fr/firefox/addon/floccus/)
- [Highlighter + Notes](https://addons.mozilla.org/fr/firefox/addon/highlighter-notes)
- [KeepassXC-Browser](https://addons.mozilla.org/fr/firefox/addon/keepassxc-browser/)
- [Load Progress Bar](https://addons.mozilla.org/fr/firefox/addon/load-progress-bar/)
- [Open bookmarks in new tab](https://addons.mozilla.org/fr/firefox/addon/open-bookmarks-in-a-new-tab/)
- [Popup Blocker (strict)](https://addons.mozilla.org/fr/firefox/addon/popup-blocker/)
- [Remove YouTube Video Blur](https://addons.mozilla.org/fr/firefox/addon/remove-youtube-video-blur/)
- [Return Youtube Dislike](https://addons.mozilla.org/fr/firefox/addon/return-youtube-dislikes/)
- [Search by image](https://addons.mozilla.org/fr/firefox/addon/search_by_image/)
- [Sponsorblock](https://addons.mozilla.org/fr/firefox/addon/sponsorblock/)
- [uBlock Origin](https://addons.mozilla.org/fr/firefox/addon/ublock-origin/)
- [Violentmonkey](https://addons.mozilla.org/fr/firefox/addon/violentmonkey/)
- [Vue du lecteur](https://addons.mozilla.org/fr/firefox/addon/reader-viewer/)
- [Wikiwand](https://addons.mozilla.org/fr/firefox/addon/wikiwand-wikipedia-modernized/)
- [Youtube Screenshot](https://addons.mozilla.org/fr/firefox/addon/youtube-screenshot-button/)
- [Youtube-shorts block](https://addons.mozilla.org/fr/firefox/addon/youtube-shorts-block/)


```bash
pgrep -f 'floorp.*-P "Professionnel"' >/dev/null || floorp -P "Professionnel" &
sleep 2
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/addons-manager/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/re-enable-right-click/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/bravesearch/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/consent-o-matic
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/languagetool/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/darkreader/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/easyscreenshot/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/siat/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/floccus/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/highlighter-notes
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/keepassxc-browser/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/load-progress-bar/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/open-bookmarks-in-a-new-tab/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/popup-blocker/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/remove-youtube-video-blur/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/return-youtube-dislikes/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/search_by_image/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/sponsorblock/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/ublock-origin/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/violentmonkey/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/reader-viewer/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/wikiwand-wikipedia-modernized/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/youtube-screenshot-button/
floorp -no-remote -P "Professionnel" https://addons.mozilla.org/fr/firefox/addon/youtube-shorts-block/
```

## Pour test

- [axe DevTools](https://addons.mozilla.org/fr/firefox/addon/axe-devtools/)
- [webhint](https://addons.mozilla.org/fr/firefox/addon/webhint/)


```bash
pgrep -f 'floorp.*-P "Test"' >/dev/null || floorp -P "Test" &
sleep 2
floorp -no-remote -P "Test" https://addons.mozilla.org/fr/firefox/addon/axe-devtools/
floorp -no-remote -P "Test" https://addons.mozilla.org/fr/firefox/addon/webhint/
```

