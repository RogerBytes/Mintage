# Viewport smartphone

Les smartphones modernes sont majoritairement dans une résolution au format 20/9 (genre 2400*1080).

Pour connaître la taille du viewport il faut déduire l'interface navigateur.

## Résolution moderne

Pour mon Redmi Note 10S (2400*1080) il y a deux viewports possible (dont l'agrandi sans l'UI du navigateur)

## Preview dans options dev du navigateur

### Résolution de visualisation

La résolution de visualisation du téléphone est différente de la résolution réelle de l'appareil.

Mon écran de 2400*1080 donne une résolution de visualisation de `393x735`. Pensez à ajouter `Android` dans l'user agent.

Pour une tablette, je conseille `768x1024`. Pensez à ajouter `Android` dans l'user agent.

```html
<p>La largeur réelle du viewport est : <span id="viewportWidth"></span> pixels.</p>
<p>La largeur réelle de l'écran est : <span id="viewportHeight"></span> pixels.</p>
```

```javascript
document.getElementById("viewportWidth").textContent = document.documentElement.getBoundingClientRect().width;
document.getElementById("viewportHeight").textContent = document.documentElement.getBoundingClientRect().height;
```
