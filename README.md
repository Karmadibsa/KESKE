# KESKÉ ?

Petit jeu façon « Devine Tête » : tu tiens le téléphone en **paysage** sur ton front,
il affiche un mot au hasard (écrit de haut en bas, gros et contrasté), et les autres
te font deviner.

## Jouer

- **Swipe droite / bouton vert** = **TROUVÉ** ✅ (+1 point)
- **Swipe gauche / bouton rouge** = **PASSE** ⏭️
- **Score** en haut, **thème** au centre, **MENU** pour changer de thème
- Au clavier (test PC) : `→` trouvé, `←` passe, `Échap` menu

Le jeu retient le thème, le mot, le score et l'avancement : un **refresh involontaire**
te remet exactement où tu en étais. L'écran reste allumé et passe en plein écran paysage.

## Lancer en local

Double-clique sur **`lancer.bat`** (Windows). Ça démarre un petit serveur et ouvre
`http://localhost:8000` dans ton navigateur.

> Pourquoi un serveur ? En ouvrant `index.html` directement (`file://`), le navigateur
> bloque le chargement de `mots.json`. Une liste de secours est intégrée au HTML, mais
> pour charger **ta** liste il faut passer par le serveur (le `.bat`) ou une mise en ligne.

## Personnaliser les mots

Édite `mots.json` : un thème = une liste.

```json
{
  "themes": {
    "Animaux": ["CHAT", "DRAGON", "GIRAFE"],
    "Nourriture": ["PIZZA", "SUSHI"]
  }
}
```
