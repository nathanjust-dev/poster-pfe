# 🖼️ Poster PFE — Procédé TIG Orbital

## 🎯 Contexte

- **Type** : poster de présentation du Projet de Fin d'Études, projeté face au jury en fin de soutenance
- **Étudiant** : JUST Nathan, Polytech Montpellier, 5ᵉ année MSI, promotion 2023-2026
- **Entreprise** : CIMAT SARTEC (groupe FOSELEV), Les Angles (30133)
- **Tuteur entreprise** : Hugo PAGANO. **Tuteur académique** : Éric ANGLARET
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
| **Lisible à 2 m** environ | ✅ corps à 11 mm sur 1200 mm de large, et texte tenu court |
| Identification de l'apprenti (nom, promotion) | ✅ bandeau d'identification |
| Présentation de l'entreprise (coordonnées, activités, organisation) | ✅ colonne 1 |
| **Photo d'une ou plusieurs réalisations caractéristiques** | ⏳ **EN ATTENTE** (emplacement réservé) |
| Logo **Polytech Montpellier** | ✅ |
| Logo **CFA ENSUP-LR** | ✅ |
| Logo **FRANCE CHAUDRONNERIE** | ✅ |
| Logo entreprise (CIMAT SARTEC) | ✅ |
| Travail effectué, **état des lieux avant / après** | ✅ colonne 3, en trois vignettes dessinées |
| Perspectives | ✅ colonne 3 |

---

## 🎨 Règles de conception (décidées avec Nathan)

1. **Le poster est GRAPHIQUE, pas rédigé.** Le jury doit comprendre **en un coup d'œil** : le
   mémoire est là pour le détail, personne ne va lire un poster pendant quinze minutes. Le procédé
   est **dessiné** (SVG maison), pas décrit. Budget de texte : **environ 240 mots** sur tout le
   poster. Toute idée qui peut être dessinée doit l'être.
2. **Aucun tableau, aucune liste à puces.** L'avant/après passe par **trois vignettes dessinées**
   (cordon irrégulier vers cordon régulier, barre pleine vers demi-barre, page manuscrite vers page
   imprimée), chacune avec une légende de six mots.
3. **Humain, jamais futuriste ni robotique.** Pas de fond sombre, pas de dégradé, pas de néon, pas
   de géométrie « tech ». Fond **papier crème**, encre **brun-noir**, icônes au trait avec angles
   arrondis, **un seul orange**.
4. **Ton humain** dans le peu de texte restant, à la première personne quand c'est naturel.
5. ⛔ **Tiret cadratin `—` (U+2014) interdit**, comme dans le mémoire.
6. **Aucun chiffre financier de l'étude** (investissement, taux horaire vendu, seuil de rentabilité,
   temps de retour). Décision de Nathan le 25/08. Les gains de temps sont exprimés **en relatif**
   (« roughly half »), jamais en heures.
7. **Chiffres du groupe FOSELEV autorisés** (1970, ~3 300 collaborateurs) : données publiques de
   présentation d'entreprise.
8. **Taux de reprise adouci.** Le mémoire dit « une soudure sur deux à trois ». Sur le poster, la
   vignette montre seulement un cordon irrégulier qui devient régulier, sans ratio. Le jury peut
   compter des donneurs d'ordres, et Nathan ne veut pas de question piège là-dessus.
9. ⚠️ **Ne jamais citer de client ni de concurrent** (règle héritée du mémoire). Seul fournisseur
   nommable : Orbitalum, et il n'est pas nommé sur le poster.
10. **Le « après » est un état cible, pas un existant.** La machine n'est pas achetée : le poster dit
    « would change », jamais « we now do ».

### Typographie

- **Cambria** (serif) : titre, intertitres, noms, encadré recommandation.
- **Candara** (sans-serif humaniste) : texte courant et libellés.
- Les deux sont installées d'origine sur Windows et **embarquées dans le PDF**, donc le rendu est
  identique sur le poste du secrétariat et sur le vidéoprojecteur.
- ❌ Segoe UI / Helvetica / Inter écartées : jugées trop génériques par Nathan (« ça fait IA »).
- ⚠️ **Piège** : Candara ne possède pas le glyphe `→`. Un `&rarr;` en HTML faisait retomber Chrome
  sur **Segoe UI Bold**, qui se retrouvait embarqué dans le PDF. Les flèches sont donc **dessinées
  en SVG**. Toujours vérifier avec `pdffonts` qu'il n'y a que du Cambria et du Candara.

### Palette

| Rôle | Valeur |
|---|---|
| Papier (fond) | `#FBF8F3` |
| Papier secondaire / tertiaire | `#F3EDE4` / `#E7DED2` |
| Encre | `#2B2724` |
| Encre secondaire | `#6B625A` |
| Accent orange | `#D9531E` (repris des logos FRANCE CHAUDRONNERIE et CIMAT SARTEC) |
| Accent clair (collier de la tête) | `#F6E3D8` |
| Pierre (l'état « avant ») | `#A79C90` |
| Bleu doux (secteur S4) | `#6E8CA0` |

Un seul aplat orange plein sur tout le poster : l'encadré **Recommendation**. C'est volontaire,
c'est la conclusion.

---

## 🖌️ Les dessins (tous en SVG inline dans `poster.html`)

| Dessin | Emplacement | Ce qu'il montre |
|---|---|---|
| Tube + tête orbitale | colonne 2, dessin principal | Le collier fermé autour du tube, le moteur posé dessus, le point orange de la torche et son trajet dans la bande du collier. Deux annotations : « the head turns » et « the tube stays put ». |
| Roue des secteurs | colonne 2 | S1 à S4, une couleur par position de soudage, flèche du sens de rotation. |
| Cordon de soudure | colonne 3, vignette 1 | Bosses irrégulières en gris vers bosses régulières en orange. |
| Temps de soudage | colonne 3, vignette 2 | Barre pleine vers demi-barre. |
| Traçabilité | colonne 3, vignette 3 | Page gribouillée à la main vers page imprimée. |
| Métiers | colonne 1 | Coude de tuyauterie à brides, virole, ferme de charpente. |

Aucune image externe n'est reprise (ni Polysoude, ni l'article Applied Sciences du mémoire) : tout
est redessiné, donc **aucune question de crédit d'image** devant le jury.

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

Ou plus simplement : **double-cliquer sur `generer_poster.bat`**, qui détecte aussi le verrou
ci-dessous.

⚠️ **Piège n°0, le plus sournois** : Nathan **édite souvent directement sur GitHub**. Le PDF est
généré à partir du fichier **local**, donc une modification faite en ligne est invisible tant que
le dépôt n'a pas été récupéré. Symptôme : « j'ai modifié le HTML mais le PDF ne change pas ».
**Toujours `git fetch` puis `git pull --rebase` AVANT de régénérer.** Contrôle rapide :
`git status` et `git diff` vides alors qu'une modification est attendue = elle est ailleurs,
probablement sur le distant.

⚠️ **Piège majeur** : si `Poster_PFE_Nathan_JUST.pdf` est **ouvert dans un lecteur PDF**, Windows
verrouille le fichier et Chrome échoue avec « le processus ne peut pas accéder au fichier ».
**Fermer le PDF avant de régénérer.**

⚠️ **Second piège** : le contenu est en flux, donc **une colonne déborde en silence** dès qu'on
ajoute deux lignes. Aucune alerte, le bas est simplement coupé. **Toujours** régénérer l'aperçu PNG
et **le regarder**.

### Vérifications après chaque génération

    pdfinfo Poster_PFE_Nathan_JUST.pdf      # Pages 1, Page size 3402 x 1913.04 pts
    pdffonts Poster_PFE_Nathan_JUST.pdf     # QUE du Cambria et du Candara, tous en "emb yes"
    pdftotext Poster_PFE_Nathan_JUST.pdf - | grep -c "—"   # doit renvoyer 0
    pdftoppm -png -r 34 Poster_PFE_Nathan_JUST.pdf apercu  # et REGARDER l'image

Poppler est installé ici :
`C:\Users\nathan.just\AppData\Local\Microsoft\WinGet\Packages\oschwartz10612.Poppler_*\poppler-*\Library\bin`

---

## 📓 Journal des étapes

> ⚠️ Le dossier n'était pas versionné avant le 25/08. Les versions v1 et v2 ci-dessous ont donc été
> produites **hors Git** ; le premier commit capture l'état v2. À partir de là, **un commit par
> étape validée**.

### 25/08/2026 — Cadrage

Lecture des consignes et du mémoire (parties 1 à 8) pour en extraire le contenu. Décisions prises
avec Nathan : format **16:9** plutôt que A1/A0 (la consigne parle de projection), **pas
d'organigramme** (illisible à 2 m une fois réduit), photos de réalisation **à fournir par Nathan**,
**aucun chiffre financier**, gains de temps **en relatif**.

### 25/08/2026 — v1 (abandonnée)

Trois colonnes, tableau avant/après, listes à puces, police Segoe UI. Rejetée : **« la police fait
trop IA »**, et **pas de tableau ni de liste à puces**.

### 25/08/2026 — v2 (abandonnée)

Typographie refaite en **Cambria + Candara**, tableau et puces supprimés, tout réécrit en prose à la
première personne, avant/après en deux blocs de texte contrastés, roue des secteurs redessinée en
SVG. Rejetée à son tour : **encore beaucoup trop de texte** (environ 600 mots). Retour de Nathan :
« le but d'un poster c'est de comprendre en un coup d'œil, le jury ne va pas prendre quinze minutes
pour tout lire, il y a déjà le rapport pour ça ».

### 25/08/2026 — v3 (état actuel) — **premier commit**

Bascule en **poster graphique**. Le texte tombe d'environ 600 à **130 mots**.

- **dessin principal** du tube avec la tête orbitale en collier, le point de torche et son trajet ;
- **avant/après devenu trois vignettes dessinées** au lieu de deux pavés de texte ;
- passage à une **palette papier chaud** (fond crème, encre brun-noir) pour tuer l'effet écran ;
- **icônes des trois métiers** dessinées pour la colonne entreprise ;
- flèches `→` remplacées par des **flèches SVG** (voir le piège Segoe UI plus haut) ;
- détection du **verrou PDF** ajoutée dans `generer_poster.bat`.

---

## ⏳ Reste à faire

- [ ] **Photo(s) de réalisation** à déposer dans le dossier, puis à intégrer dans `poster.html` à la
      place du bloc `.photo` (remplacer son contenu par `<img src="assets/...">`).
- [ ] Légende de la photo à arrêter avec Nathan.
- [ ] Valider la traduction « CIMAT SARTEC, Rhône Valley branch » (actuellement non reprise sur le
      poster, seul « CIMAT SARTEC » apparaît).
- [ ] Relecture orthographique anglaise finale.
- [ ] Envoi au tuteur pédagogique et au secrétariat + dépôt MOODLE « MSI5 PFE » avant le **28/08**.

---

## 🎨 Copie Canva (25/08/2026)

Le PDF a été importé dans Canva depuis l'URL brute GitHub (le dépôt est public depuis le 25/08,
ce qui rend l'import possible : l'outil Canva exige une URL publique en HTTPS et refuse les
fichiers locaux).

- **Design id** : `DAHTRv_HTzk`, titre « Poster PFE - Nathan JUST - Orbital TIG Welding »
- **Géométrie conservée à l'identique** : page de 4536 × 2551 px, soit exactement 1200 × 675 mm.

⚠️ **L'import PDF vers Canva est LOSSY sur le texte.** Trois défauts constatés et corrigés à la
main via l'API :

1. une **ligne vide de 98 px** injectée entre les deux lignes du titre (le `<br>` du HTML est
   devenu un saut de paragraphe plus une ligne vide), ce qui poussait le sous-titre sur le bandeau
   d'identification ;
2. la légende de l'encadré recommandation avait **perdu toutes ses espaces**
   (`Weldingtimestobeconfirmed...`), symptôme classique d'extraction de texte PDF au crénage ;
3. une **espace parasite** avant une virgule dans la légende de la roue (`flat , vertical down`).

**Le master reste `poster.html`.** La copie Canva est un instantané : elle ne se régénère pas, et
toute modification faite ici doit être reportée à la main dans le HTML, sinon les deux divergent.
Si le HTML évolue, le plus simple est de **réimporter** et de refaire les trois corrections
ci-dessus, plutôt que d'essayer de synchroniser.

### 25/08/2026 — v3.1

Nathan trouvait la v3 **trop vide**. Ajout d'environ 110 mots, sans revenir au pavé de la v2 :

- phrase d'accroche en tête de la colonne 2 (le problème : tout est soudé à la main, les clients
  demandent régularité et traçabilité) ;
- **le point normatif réintroduit** dans la colonne 3. Il avait entièrement disparu en v3 alors
  que le jury va poser la question : qualification du mode opératoire, puis des opérateurs selon
  ISO 14732, puis les contrôles ;
- une sous-légende sous chacune des trois vignettes ;
- légendes des deux dessins de la colonne 2 complétées d'une phrase ;
- colonne 1 : ce que faisait Nathan et comment le sujet lui est arrivé ;
- perspectives : la bibliothèque de programmes comme capital technique.

Budget de texte révisé : **environ 240 mots** (contre 130 en v3 et 600 en v2).

⚠️ **La copie Canva `DAHTRv_HTzk` est désormais périmée** : elle contient la v3. Réimporter et
refaire les trois corrections de conversion si on veut la remettre à niveau.

---

## 🟠 Version brochure (25/08/2026) — variante

Deuxième version **en parallèle**, qui reprend la charte de la brochure commerciale
**FOSELEV Maintenance** (Nathan a confirmé que c'était validé côté entreprise). La v3.1 reste
intacte de son côté : les deux versions coexistent.

| Fichier | Rôle |
|---|---|
| `poster_brochure.html` | source de la variante |
| `Poster_PFE_Nathan_JUST_brochure.pdf` | le PDF, mêmes 1200 × 675 mm |
| `generer_poster_brochure.bat` | régénération |
| `photos/A_DEPOSER.md` | les 5 photos attendues et où elles vont |
| `apercu_brochure.png` | aperçu |

⚠️ Le dossier `exemple brochure/` (photos de la brochure papier, sources du design) est
**volontairement dans `.gitignore`** : c'est du matériel commercial FOSELEV, sans intérêt à le
republier sur un dépôt public.

### Ce qui a été relevé sur la brochure, et repris

- **Orange officiel `#FE7201`** (voir la charte plus bas). La première estimation `#EB6F25`,
  échantillonnée sur le logo, était proche mais fausse.
- **Coin biseauté** sur les photos (haut-droit) et les encarts orange (haut-gauche).
- **Petit carré à barre oblique** posé à l'angle des photos.
- **Trait orange épais et court** au-dessus de chaque titre de section.
- **Titres en capitales géométriques légères très interlettrées.**
- **Pastilles orange carrées à pictogramme blanc** devant chaque ligne.
- **Un panneau orange plein bord à bord**, ici le résultat plutôt que le contact.

### Polices, et le piège rencontré

| Rôle | Police | Fichier Windows |
|---|---|---|
| Titre de couverture | **Franklin Gothic Heavy** | `FRAHV.TTF` |
| Titres de section | **Century Gothic** | `GOTHIC.TTF` |
| Texte courant | **Corbel** | `corbel.ttf` |

⚠️ **Piège** : les noms `"Franklin Gothic Demi Cond"` et `"Franklin Gothic Medium Cond"`
**ne résolvent pas** sous Chrome, alors que les fichiers existent bien dans `C:\Windows\Fonts`.
La requête retombe silencieusement sur Arial Narrow. Les noms qui fonctionnent sont
`"Franklin Gothic Heavy"`, `"Franklin Gothic Medium"` (qui donne en réalité `FranklinGothic-Demi`)
et `"Franklin Gothic Book"`. Bahnschrift résout mais s'embarque en **Type 3**, à éviter dans un PDF
destiné à l'impression. Toujours vérifier avec `pdffonts` ce qui est réellement embarqué.

### Écart assumé avec les règles de la v3.1

Cette variante **réintroduit des listes** (les lignes à pastille), ce que Nathan avait écarté sur
la v3.1. C'est délibéré : c'est la signature de la brochure, et il a choisi cette option en
connaissance de cause. En contrepartie, **les dessins du procédé disparaissent** (tête orbitale,
roue des secteurs, vignettes avant/après). Ils restent disponibles dans `poster.html`.

### Reste à faire sur cette variante

- [ ] Déposer les **5 photos** (voir `photos/A_DEPOSER.md`), puis décommenter les lignes
      `background` correspondantes et retirer les `<span class="lbl">`.
- [ ] Choisir avec Nathan **laquelle des deux versions** part au secrétariat.

---

## 📗 Charte graphique officielle FOSELEV (fournie le 25/08/2026)

Nathan a déposé `FOSELEV - Charte Graphique.pdf` (8 p.) et
`Plaquette Maintenance Industrielle.pdf` (4 p.) dans `chartre graphique foselev/`.
Ce dossier est **volontairement dans `.gitignore`** : une charte graphique est de la
documentation interne d'entreprise, à ne pas republier sur un dépôt public.

Les approximations de la veille sont donc remplacées par les valeurs officielles.

### Couleurs (charte p.2)

| Rôle | Écran | Impression |
|---|---|---|
| **Orange** | `#FE7201` (R254 V114 B1) | CMJN 0/65/90/0, **Pantone 1585**, RAL 2004 |
| **Gris** | `#747170` | CMJN 0/0/0/65, Cool Gray 10, RAL 7016 |
| **Anthracite** | `#3C3C3B` | CMJN 0/0/0/90, Black 7, RAL 7026 |
| **Blanc** | `#FFFFFF` | RAL 9010 |

⚠️ **Règle explicite de la charte (p.3)** : ne jamais mettre de contenu **orange sur gris clair**,
ni l'inverse. Le contraste est insuffisant.

### Polices (charte p.6)

La charte prescrit **Century Gothic** et **Kozuka Gothic Pro** ; **Futura Extra Black** est
réservée aux logos de filiales. Kozuka Gothic Pro est une police Adobe, absente de Windows.

Le `pdffonts` de la plaquette officielle tranche la question : elle utilise en réalité
**Century Gothic** (Regular et Bold) et **Impact** pour les gros titres. C'est donc ce couple qui
est repris, et les deux sont installées d'origine sur Windows.

| Rôle | Police retenue |
|---|---|
| Gros titre | **Impact** |
| Titres de section et texte courant | **Century Gothic** |

Franklin Gothic Heavy, retenu la veille faute de mieux, est abandonné.

### Pictogrammes (charte p.6)

Les pictogrammes FOSELEV sont **ronds**, pas carrés : cercle plein orange à glyphe blanc, ou
cercle blanc à contour et glyphe orange. Les pastilles du poster ont été passées en cercles.

### Images

`pdfimages` sur la plaquette donne **une seule photo vraiment exploitable** (1290 × 1536, site
industriel avec opérateur FOSELEV) et une bande d'engrenages (1104 × 306). Toutes les autres sont
sous 411 px. La plaquette **ne contient aucune photo de TIG orbital**.

⚠️ **Définition juste suffisante pour la projection, faible pour l'impression** : sur 1200 mm de
large, la photo du bandeau tombe à environ 27 ppp.

⚠️ **Pas d'images prises sur internet.** Le dépôt est public et le poster passe devant un jury :
reprendre une photo d'un site de constructeur ou d'un moteur de recherche, c'est reprendre une
œuvre protégée sans licence. Voir `photos/A_DEPOSER.md` pour les trois options propres.

---

## 🖼️ Photos de la version brochure (25/08/2026)

Les quatre emplacements sont remplis, voir `photos/README.md` pour le tableau complet des
origines et licences.

- **Bandeau** : photo FOSELEV extraite de la plaquette officielle.
- **Panneaux 1 à 3** : trois photos de **Wikimedia Commons** sous licence Creative Commons,
  toutes de soudage TIG orbital sur tube (cordon sur 316L, tête orbitale, cordon avec zone
  affectée thermiquement).

⚠️ **Le bloc IMAGE CREDITS en bas du panneau orange est une obligation légale**, pas une
décoration. Les licences CC BY et CC BY-SA imposent d'afficher auteur et licence. Ne pas le
supprimer tant que ces photos sont en place.

⚠️ **`foselev.com` et `cimatsartec.fr` sont injoignables** depuis cet environnement (bloqués ou
hors ligne), aussi bien en `curl` que par le navigateur intégré. Les photos FOSELEV ne peuvent
donc venir que des PDF fournis par Nathan.

### Écartées volontairement

- La bande d'engrenages de la plaquette : hors sujet.
- `AXXAIR closed weld head SATFX-76.jpg` : logo **AXXAIR** bien lisible, alors que le mémoire a
  retenu **Orbitalum**. Afficher un concurrent appellerait une question du jury.
- Toute image issue d'un moteur de recherche ou d'un site de constructeur : œuvre protégée sans
  licence de réutilisation, indéfendable sur un dépôt public.

---

## 🖼️ Photos, état final (25/08/2026)

Nathan a fourni trois photos qui remplacent la plupart de mes trouvailles Wikimedia. Voir
`photos/README.md` pour le tableau complet.

- **Bandeau** : soudeur en tenue FOSELEV, arc allumé, prise sur le site FOSELEV.
- **Panneau 1** : site industriel FOSELEV (plaquette officielle).
- **Panneau 2** : tête orbitale ouverte en action sur gros diamètre.
- **Panneau 3** : tête ORBIWELD posant un cordon, gros plan.
- **Panneau orange, bas** : cordon orbital fini sur 316L, seule image encore sous licence
  Creative Commons (CC BY 2.0), d'où la ligne de crédit conservée juste en dessous.

⚠️ Les deux photos de matériel viennent de pages constructeur ou distributeur : ce sont des
**photos produit protégées**. Nathan les a fournies en connaissance de cause et Orbitalum est le
fournisseur retenu dans le mémoire, donc c'est cohérent. Pour une diffusion plus large que le
jury, demander l'accord du fournisseur ou les remplacer par des photos d'atelier.

---

## ⚠️ RÈGLE DE FOND : le procédé N'EST PAS installé (25/08/2026)

Nathan a repéré un problème sérieux : le poster laissait croire que le TIG orbital tournait déjà
à l'atelier. **Ce n'est pas le cas.** Le PFE est une **étude d'aide à la décision**, remise à la
direction, qui ne s'est pas encore prononcée. Un membre du jury pouvait légitimement demander
« depuis quand soudez-vous en orbital ? » et Nathan se serait retrouvé en porte-à-faux.

### Cadrage retenu : l'avant/après porte sur L'ÉTUDE, pas sur l'atelier

La consigne demande un état des lieux avant/après le projet. Le projet, c'est l'étude. Donc :

- **Avant** : l'orbital était une intuition que personne n'avait chiffrée. Pas d'analyse
  technique, pas de plan, pas d'offre.
- **Après** : un dossier de décision complet, analyse technique, chemin normatif ISO 14732,
  offre fournisseur, chiffrage.
- **Sur la table** : une recommandation argumentée, prête à être tranchée par la direction.
- **Attendu à l'atelier** : les gains, formulés comme une **attente**, jamais comme un fait.

C'est plus honnête, et ça met en valeur le travail de Nathan plutôt qu'une machine qui n'existe
pas encore.

### Ce qui a été corrigé dans les DEUX versions

| Avant | Après |
|---|---|
| « Tomorrow: programmed travel, a bead that comes out the same every time » | « **Expected in the workshop**: a bead that repeats… » |
| « Roughly half the welding time » | « **Expected**: roughly half the welding time » |
| « Every weld recorded by the machine » | « **Welds recorded** by the machine » (conditionnel assumé) |
| Encart « Compliance path » | Encart **« Status »** : *The process is not installed. The study was delivered, and the decision sits with the management team.* |
| « What comes next » | **« If it goes ahead »** |
| Note sous la recommandation | *That is the conclusion of the study, not a decision already taken.* |

⛔ **À ne jamais réintroduire** : une formulation au présent de l'indicatif décrivant l'atelier
équipé en orbital. Tant que la direction n'a pas tranché, tout ce qui concerne l'après est au
conditionnel ou explicitement étiqueté « expected ».

### Piège technique rencontré au passage

Après un `git pull`, Git réécrit les fichiers modifiés en **CRLF** (`core.autocrlf` sous Windows).
Les motifs `perl -0pi -e` avec des `\n` **cessent alors de matcher en silence** : la commande
réussit, mais ne remplace rien. Symptôme : la substitution « passe » et le rendu ne change pas.
Utiliser l'outil d'édition plutôt que `perl` sur un fichier fraîchement récupéré, ou vérifier
systématiquement avec un `grep` après substitution.
