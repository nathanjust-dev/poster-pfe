# Photos du poster version brochure

## Déjà en place

Deux images viennent de la **plaquette officielle FOSELEV**
(`chartre graphique foselev/Plaquette Maintenance Industrielle.pdf`), extraites avec `pdfimages`.
Ce sont des photos FOSELEV, déjà publiées par l'entreprise dans son propre document commercial.

| Fichier | Où | Définition | Remarque |
|---|---|---|---|
| `hero.png`    | grand bandeau | 1290 × 1536 | Site industriel, opérateur FOSELEV. Recadrée à 32 % de hauteur. |
| `company.png` | panneau 1 | 1104 × 306 | Bande d'engrenages, maintenance mécanique. |

⚠️ **Définition juste suffisante pour la projection, faible pour l'impression.** Sur un poster
de 1200 mm de large, `hero.png` tombe à environ 27 points par pouce. Très bien sur vidéoprojecteur,
visiblement flou si le poster est imprimé en grand format.

## Encore attendues

| Fichier | Où | Ce qui marche le mieux |
|---|---|---|
| `process.jpg` | panneau 2, « Orbital TIG welding » | Gros plan de soudage sur tube, torche ou tête orbitale en place. |
| `change.jpg`  | panneau 3, « What would change » | Cordon de soudure fini, ou contrôle visuel d'une soudure. |
| `site.jpg`    | panneau orange, en bas | Petite vignette : intervention sur site. |

La plaquette FOSELEV **ne contient aucune photo de TIG orbital**, donc ces trois-là ne peuvent pas
en être tirées.

## Pourquoi pas des images prises sur internet

Le dépôt est **public** et le poster passe devant un jury. Reprendre une photo trouvée sur un
moteur de recherche, un site de constructeur ou une page de fournisseur, c'est reprendre une œuvre
protégée sans licence. Trois options propres, par ordre de préférence :

1. **Tes propres photos**, prises au téléphone à l'atelier. Dix minutes, aucun risque, et c'est
   ton travail que le jury voit.
2. **Photos FOSELEV** issues de la plaquette ou fournies par la communication du groupe.
3. **Images sous licence libre** explicite (Creative Commons, domaine public), avec la mention
   d'attribution imposée par la licence portée sur le poster. Utilisable mais moins élégant :
   il faut afficher le crédit.

## Comment brancher une photo

Dans `poster_brochure.html`, remplacer le bloc de l'emplacement concerné par :

    <div class="ph" style="background: url('photos/process.jpg') center / cover no-repeat">
      <span class="slash"></span>
    </div>

puis régénérer avec `generer_poster_brochure.bat`.
