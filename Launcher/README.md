# ES-KDE-Launcher

Dépôt **runtime** du fork [ES-KDE](https://github.com/Kam3leoN/ES-KDE) : binaire Windows prêt à l’emploi, sans sources ni outils de compilation.

| Dépôt | Rôle |
|-------|------|
| [ES-KDE](https://github.com/Kam3leoN/ES-KDE) | **Builder** — sources, CMake, dépendances `external\` |
| **ES-KDE-Launcher** (ce dépôt) | **Launcher** — `ES-KDE.exe`, DLL, `resources\`, `themes\`, etc. |

## Contenu

À la racine : `ES-KDE.exe` et les bibliothèques requises (`*.dll`), plus `resources\` (dont **`resources\locale\`** avec les fichiers `.mo` — obligatoire au démarrage), `themes\`, `es-pdf-converter\`.

**Téléchargement :** utilisez **Code → Download ZIP** ou `git clone` — les binaires sont versionnés dans ce dépôt (pas de Git LFS requis). Si un clone ancien n’a pas les `.exe`/`.dll`, faites `git pull`.  
Métadonnées de build : `VERSION.txt`.

Compilation ScreenBox : ROMs par défaut dans `../roms` si le répertoire ROM est vide dans les réglages (`SCREENBOX_PARENT_ROM_DIR=ON`).

## Mise à jour (depuis la machine de build)

```bat
cd /d D:\__SCREENBOX_PROJECTS\ES-KDE
tools\build-release.cmd
```

Le build appelle `tools\publish-to-launcher.ps1`, qui recopie le portable ici. Puis :

```powershell
cd D:\__SCREENBOX_PROJECTS\ES-KDE-Launcher
git add -A
git status
git commit -m "Release: portable Windows ES-KDE"
git push origin main
```

Publication manuelle :

```powershell
pwsh -File D:\__SCREENBOX_PROJECTS\ES-KDE\tools\publish-to-launcher.ps1
```

## ScreenBox

```powershell
pwsh -File D:\__SCREENBOX_PROJECTS\ScreenBox\scripts\refresh-esde-from-emulationstation-de-build.ps1
pwsh -File D:\__SCREENBOX_PROJECTS\ScreenBox\scripts\sync-esde-from-workspace-bundle.ps1
```

Par défaut, la source est ce dépôt (`ES-KDE-Launcher`) si `ES-KDE.exe` y est présent.

## Lancement directe

```bat
ES-KDE.exe --help
ES-KDE.exe --home .
```

Les données utilisateur ES-DE sont créées sous `ES-DE\` (nom produit upstream) dans le dossier `--home`.
