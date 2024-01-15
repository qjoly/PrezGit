---
marp: true
theme: gaia
markdown.marp.enableHtml: true
paginate: true
class: invert
header: 'Découvrir Git'
footer: "[Auteur](https://une-tasse-de.cafe)"
titre: 'CyberPrez #04 - Git'
description: Git avec une tasse de café
author: Quentin JOLY
keywords: Git,thebidouilleur,tasse-de-cafe, git avec une tasse de café, Quentin JOLY, Apprendre git
url: https://une-tasse-de.cafe
---

<style>
p, li {
    font-size: 25px;
}
video {
  display: block;
  margin: auto;
}

img[alt~="center"] {
  display: block;
  margin: 0 auto;
}

video::-webkit-media-controls {
    will-change: transform;
}

section.sommaire li {
    font-size: 20px;
}

</style>

<!-- _class: lead invert -->
<!-- transition: cover -->

<title> Git avec une tasse de café </title>
<!-- Matomo -->
<script>
  var _paq = window._paq = window._paq || [];
  /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//mat.une-tasse-de.cafe/";
    _paq.push(['setTrackerUrl', u+'matomo.php']);
    _paq.push(['setSiteId', '2']);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<noscript><p><img src="//mat.une-tasse-de.cafe/matomo.php?idsite=2&amp;rec=1" style="border:0;" alt="" /></p></noscript>
<!-- End Matomo Code -->


CyberPrez #04 - Git
# Découvrir Git 

![width:250](./img/gitlogo.png)

---
<!-- _class: lead invert sommaire -->

# Qu'est-ce que Git ?

---
<!-- _class: lead invert -->

- Git est un logiciel de gestion de versions décentralisé. C'est un logiciel libre créé par Linus Torvalds, auteur du noyau Linux, et distribué selon les termes de la licence publique générale GNU version 2.

- Il permet de stocker un ensemble de fichiers en conservant la chronologie de toutes les modifications qui ont été effectuées dessus. Il permet donc de revenir à n'importe quelle version antérieure du projet.

---
<!-- _class: lead invert -->

# Pourquoi utiliser Git ?

- Développeurs: pour gérer les versions de votre code, travailler à plusieurs sur un même projet, gérer les conflits, etc.
- Ops: pour gérer les versions de vos scripts, de vos configurations, automatiser vos déploiements, etc.

---
<!-- _class: lead invert -->

# Installer Git

- Sur Linux, il suffit d'installer le paquet git via le gestionnaire de paquets de votre distribution.

- Sur Windows, il faut télécharger le logiciel sur le [site officiel](https://git-scm.com/downloads).

---
<!-- _class: lead invert -->

# Créer un dépôt Git

- Pour créer un dépôt Git, il suffit de se placer dans le répertoire du projet et d'exécuter la commande suivante :

```bash
git init
```

Git va alors créer un répertoire caché nommé .git qui contiendra toutes les informations nécessaires au fonctionnement de Git.

---

# Ajouter des fichiers au dépôt

- Pour ajouter des fichiers au dépôt, il faut utiliser la commande suivante :

```bash
git add <nom du fichier>
```

Les fichiers ajoutés sont alors placés dans la zone de transit (staging area).

--- 

# Qu'est ce que la zone de transit ?

- La zone de transit est un espace de stockage temporaire qui permet de préparer les fichiers à être commités.
- Elle permet de sélectionner les fichiers à ajouter au prochain commit.

![center](https://madewithml.com/static/images/mlops/git/environments.png)

*source: [mdwithml](https://madewithml.com/courses/mlops/git)*

---

# Commiter les fichiers

Un commit est une validation des modifications effectuées sur les fichiers du projet. Celui-ci est identifié par un hash SHA-1 et contient les informations suivantes :
- L'auteur du commit
- La date du commit
- Le message du commit
- Les fichiers modifiés

Lorsque l'on clone un dépôt Git, on récupère l'ensemble des commits du projet.

---

Pour commiter les fichiers, il faut utiliser la commande suivante *(après avoir ajouté les fichiers à la zone de transit)* :

```bash
git commit -m "Message du commit"
```

Une fois les fichiers commités, ils sont stockés dans le répertoire .git. Il est possible de revenir à n'importe quel commit du projet grâce à son hash.

---

