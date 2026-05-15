# ScreenBox

Produit **distribuable** du lanceur Windows ScreenBox : `ScreenBox.exe` + bundle (`Launcher\` avec ES-KDE, squelette `Roms\`, `System\`, etc.).

## Utilisation

Double-cliquez **`ScreenBox.exe`** à la racine de ce dossier. Le lanceur démarre **`Launcher\ES-KDE.exe`** (ES-DE custom).

Configuration : **`screenbox.ini`** (généré au premier lancement si absent).

## Mise à jour

Ce dépôt est alimenté par **[ScreenBox-Builder](https://github.com/Kam3leoN/ScreenBox-Builder)** :

```bat
cd D:\__SCREENBOX_PROJECTS\ScreenBox-Builder
tools\build-release.cmd
```

## Dépôts liés

| Dépôt | Rôle |
|-------|------|
| [ES-KDE](https://github.com/Kam3leoN/ES-KDE) | Sources ES-DE custom |
| [ES-KDE-Launcher](https://github.com/Kam3leoN/ES-KDE-Launcher) | Runtime ES-KDE compilé |
| [ScreenBox-Builder](https://github.com/Kam3leoN/ScreenBox-Builder) | Build `ScreenBox.exe` + assemblage |
| **ScreenBox** (ce dépôt) | Bundle prêt à l’emploi |

## Git

Les ROMs, sauvegardes et données utilisateur (`Launcher\ES-DE\`) ne sont pas versionnées (voir `.gitignore`).
