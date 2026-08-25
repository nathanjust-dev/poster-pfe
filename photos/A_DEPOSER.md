# Photos à déposer ici

Le poster version brochure attend **5 images**, en **paysage**, bien définies
(1600 px de large minimum, 2400 px c'est mieux).

| Fichier | Emplacement | Ce qui marche le mieux |
|---|---|---|
| `hero.jpg`    | grand bandeau sous les logos | Une photo **sombre et large** : soudeur à l'arc, atelier en contre-jour. Le titre orange se pose dessus à gauche, l'identité à droite, donc il faut du calme au centre. |
| `company.jpg` | panneau 1, « The company » | Vue d'atelier ou ligne de tuyauterie assemblée. |
| `process.jpg` | panneau 2, « Orbital TIG welding » | Gros plan de soudage sur tube, torche ou tête en place. |
| `change.jpg`  | panneau 3, « What would change » | Cordon de soudure, contrôle visuel, ou pièce finie. |
| `site.jpg`    | panneau orange, en bas | Petite vignette : intervention sur site, ciel dégagé. |

## Une fois les photos déposées

Dans `poster_brochure.html`, chaque emplacement porte un commentaire
`PHOTO n :` avec la ligne `background` à décommenter. Il suffit de la décommenter
et de supprimer le `<span class="lbl">` correspondant, puis de régénérer avec
`generer_poster_brochure.bat`.

⚠️ Le dépôt GitHub est **public**. Vérifier qu'aucune photo ne montre une
installation client identifiable, un logo de donneur d'ordre, ou un visage
reconnaissable sans accord.
