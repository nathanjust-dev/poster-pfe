# 🖼️ Poster PFE — Procédé TIG Orbital

## 🎯 Contexte

- **Type** : poster de présentation du Projet de Fin d'Études, projeté face au jury en fin de soutenance
- **Étudiant** : JUST Nathan, Polytech Montpellier, 5ᵉ année MSI, promotion 2023-2026
- **Entreprise** : CIMAT SARTEC (groupe FOSELEV), Les Angles (30133)
- **Tuteur entreprise** : Hugo PAGANO — **Tuteur académique** : Éric ANGLARET
- **Sujet** : mise en œuvre du procédé de soudage TIG orbital
- **Mémoire associé** : https://github.com/nathanjust-dev/memoire-pfe (privé)

⚠️ **Échéance : 28 août 2026.** Le poster doit être envoyé par e-mail au tuteur pédagogique et au
secrétariat, et déposé dans MOODLE « MSI5 PFE ».

---

## 📋 Cahier des charges (source : `Consigne Poster.jpg`)

| Exigence | État |
|---|---|
| Rédigé **en anglais** | ✅ |
| **Format paysage**, PDF, lisible sur vidéoprojecteur | ✅ 1200 × 675 mm (16:9), 1 page, vectoriel |
| **Lisible à 2 m** environ | ✅ corps à 10,2 mm sur 1200 mm de large |
| Identification de l'apprenti (nom, promotion) | ✅ bandeau d'identification |
| Présentation de l'entreprise (coordonnées, activités, organisation) | ✅ colonne 1 |
| **Photo d'une ou plusieurs réalisations caractéristiques** | ⏳ **EN ATTENTE** (emplacement réservé) |
| Logo **Polytech Montpellier** | ✅ |
| Logo **CFA ENSUP-LR** | ✅ |
| Logo **FRANCE CHAUDRONNERIE** | ✅ |
| Logo entreprise (CIMAT SARTEC) | ✅ |
| Travail effectué, **état des lieux avant / après** | ✅ colonne 2 |
| Perspectives | ✅ colonne 3 |

---

## 🎨 Règles de rédaction et de mise en forme (décidées avec Nathan)

1. **Aucun tableau, aucune liste à puces.** Tout le contenu du poster est rédigé **en prose**.
   L'avant/après passe par deux blocs de texte contrastés (gris « today » / orangé « would change »),
   pas par une grille.
2. **Ton humain**, à la première personne quand c'est naturel. Pas de style « fiche technique ».
3. ⛔ **Tiret cadratin `—` (U+2014) interdit**, comme dans le mémoire. Vérification :
   `pdftotext Poster_PFE_Nathan_JUST.pdf - | grep -c "—"` doit renvoyer `0`.
4. **Aucun chiffre financier de l'étude** (investissement, taux horaire vendu, seuil de rentabilité,
   temps de retour). Décision de Nathan le 25/08. Les gains de temps sont exprimés **en relatif**
   (« roughly halved »), jamais en heures.
5. **Chiffres du groupe FOSELEV autorisés** (1970, ~3 300 collaborateurs, ~570 millions d'euros) :
   données publiques de présentation d'entreprise.
6. **Taux de reprise adouci.** Le mémoire dit « une soudure sur deux à trois ». Sur le poster :
   « part of the radiographed welds still has to be taken up again », sans ratio. Le jury peut
   compter des donneurs d'ordres, et Nathan ne veut pas de question piège là-dessus.
7. ⚠️ **Ne jamais citer de client ni de concurrent** (règle héritée du mémoire). Seul fournisseur
   nommable : Orbitalum, et il n'est pas nommé sur le poster.
8. **Le « après » est un état cible, pas un existant.** La machine n'est pas achetée : le poster dit
   « would change », « proposed », jamais « we now do ».

### Typographie

- **Cambria** (serif) : titre, intertitres en italique, accroches, encadré recommandation.
- **Candara** (sans-serif humaniste) : texte courant.
- Les deux sont installées d'origine sur Windows et **embarquées dans le PDF** (`pdffonts` doit
  afficher `emb yes` partout), donc le rendu est identique sur le poste du secrétariat.
- ❌ Segoe UI / Helvetica / Inter écartées : jugées trop génériques par Nathan (« ça fait IA »).

### Palette

| Rôle | Valeur |
|---|---|
| Encre | `#1B2733` |
| Encre secondaire | `#46545F` |
| Accent orange | `#D9531E` (repris des logos FRANCE CHAUDRONNERIE et CIMAT SARTEC) |
| Accent foncé (intertitres) | `#A93D11` |
| Bleu (secteur S4) | `#2E7CBF` |
| Fonds | `#F4F7F9` / `#EDF1F5` / `#FCF4EF` |

Un seul aplat orange plein sur tout le poster : l'encadré **Recommendation**. C'est volontaire,
c'est la conclusion.

---

## 📁 Contenu du dépôt

| Fichier | Rôle |
|---|---|
| `Poster_PFE_Nathan_JUST.pdf` | **le livrable** à envoyer au secrétariat |
| `poster.html` | la source unique, tout est dedans (CSS + SVG inline) |
| `assets/` | les 4 logos |
| `apercu_poster.png` | aperçu image du rendu |
| `generer_poster.bat` | double-clic pour régénérer le PDF |
| `Consigne Poster.jpg` | le cahier des charges de l'école |
| `CLAUDE.md` | ce fichier |

---

## 🛠️ Workflow de génération

Le PDF est produit par **Chrome en mode headless** à partir de `poster.html`. Le format de page est
fixé côté CSS (`@page { size: 1200mm 675mm; margin: 0; }`), Chrome le respecte.

    chrome.exe --headless=new --disable-gpu --no-pdf-header-footer ^
      --print-to-pdf="Poster_PFE_Nathan_JUST.pdf" "file:///.../poster.html"

Ou plus simplement : **double-cliquer sur `generer_poster.bat`**.

### Vérifications après chaque génération

    pdfinfo Poster_PFE_Nathan_JUST.pdf      # doit dire : Pages 1, Page size 3402 x 1913.04 pts
    pdffonts Poster_PFE_Nathan_JUST.pdf     # toutes les polices en "emb yes"
    pdftotext Poster_PFE_Nathan_JUST.pdf - | grep -c "—"   # doit renvoyer 0
    pdftoppm -png -r 34 Poster_PFE_Nathan_JUST.pdf apercu  # et REGARDER l'image

⚠️ **Piège récurrent** : le texte est en flux, donc **la colonne 2 déborde dès qu'on ajoute deux
lignes**. Il n'y a pas d'alerte, le contenu est simplement coupé en bas. **Toujours** régénérer
l'aperçu PNG et le regarder après une modification de texte.

Poppler (`pdfinfo`, `pdffonts`, `pdftoppm`, `pdftotext`) est installé ici :
`C:\Users\nathan.just\AppData\Local\Microsoft\WinGet\Packages\oschwartz10612.Poppler_*\poppler-*\Library\bin`

---

## 📓 Journal des étapes

> ⚠️ Le dossier n'était pas versionné avant le 25/08. Les versions v1 et v2 ci-dessous ont donc été
> produites **hors Git** ; le premier commit capture l'état v2. À partir de là, **un commit par
> étape validée**.

### 25/08/2026 — Cadrage

Lecture des consignes et du mémoire (parties 1 à 8) pour en extraire le contenu. Décisions prises
avec Nathan :

- format **16:9** plutôt que A1/A0, parce que la consigne parle explicitement de projection ;
- **pas d'organigramme** sur le poster (illisible à 2 m une fois réduit), remplacé par une phrase ;
- photos de réalisation **à fournir par Nathan** ;
- **aucun chiffre financier**, colonne 3 entièrement qualitative ;
- gains de temps **en relatif**.

### 25/08/2026 — v1 (abandonnée)

Structure en 3 colonnes, tableau avant/après, listes à puces, police Segoe UI. Rejetée par Nathan :
**« la police fait trop IA »**, et **pas de tableau ni de liste à puces**.

### 25/08/2026 — v2 (état actuel)

- typographie refaite en **Cambria + Candara** ;
- **tableau et puces supprimés**, tout réécrit en prose à la première personne ;
- avant/après transformé en deux blocs contrastés ;
- schéma des secteurs S1-S4 **redessiné en SVG maison** (pas de reprise de l'image Polysoude du
  mémoire, donc pas de question de crédit d'image), étiquettes périphériques basculées dans la
  légende pour agrandir le cercle et rester lisible à 2 m ;
- corps ramené de 10,6 à 10,2 mm pour que la colonne 2 tienne sans couper de contenu.

---

## ⏳ Reste à faire

- [ ] **Photo(s) de réalisation** à déposer dans le dossier, puis à intégrer dans `poster.html` à la
      place du bloc `.photo` (remplacer le contenu par `<img src="assets/...">`).
- [ ] Légende de la photo à arrêter avec Nathan.
- [ ] Valider la traduction « CIMAT SARTEC, Rhône Valley branch ».
- [ ] Relecture orthographique anglaise finale.
- [ ] Envoi au tuteur pédagogique et au secrétariat + dépôt MOODLE « MSI5 PFE » avant le **28/08**.
