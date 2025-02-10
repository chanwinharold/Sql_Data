-- --------------------------------------------------------
--
-- Structure de la table 'Auteurs'
--

CREATE TABLE IF NOT EXISTS BD101_AUTEURS (
  IdAuteur int(5) NOT NULL,
  Nom varchar(50) NOT NULL DEFAULT '',
  Prenom varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (IdAuteur)
);


-- --------------------------------------------------------
--
-- Structure de la table 'Livres'
--

CREATE TABLE IF NOT EXISTS BD101_LIVRES (
  IdLivre int(5) NOT NULL,
  Titre varchar(50) NOT NULL DEFAULT '',
  Annee year(4) NOT NULL DEFAULT '0000',
  IdAuteur int(5) NOT NULL,
  PRIMARY KEY (IdLivre),
  FOREIGN KEY (IdAuteur) REFERENCES BD101_AUTEURS(IdAuteur) ON DELETE CASCADE
);

-- --------------------------------------------------------
--
-- Structure de la table 'Exemplaires'
--

CREATE TABLE IF NOT EXISTS BD101_EXEMPLAIRES (
  IdLivre int(5) NOT NULL,
  IdExemplaire int(5) NOT NULL,
  Etat varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (IdLivre, IdExemplaire),
  FOREIGN KEY (IdLivre) REFERENCES BD101_LIVRES(IdLivre) ON DELETE CASCADE
);

-- --------------------------------------------------------
--
-- Structure de la table 'Personnes'
--

CREATE TABLE IF NOT EXISTS BD101_PERSONNES(
  IdPersonne int(5) NOT NULL,
  Nom varchar(25) NOT NULL,
  Prenom varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (IdPersonne)
 );
  
  
 -- --------------------------------------------------------
--
-- Structure de la table 'Emprunts'
--

CREATE TABLE IF NOT EXISTS BD101_EMPRUNTS (
  IdPersonne int(5) NOT NULL,
  IdLivre int(5) NOT NULL,
  IdExemplaire int(5) NOT NULL,
  DateEmprunt DATE NOT NULL,
  DateRetour DATE DEFAULT NULL,
  PRIMARY KEY (IdPersonne, IdLivre, IdExemplaire, DateEmprunt),
  FOREIGN KEY (IdPersonne) REFERENCES BD101_PERSONNES(IdPersonne) ON DELETE CASCADE,
  FOREIGN KEY (IdLivre, IdExemplaire) REFERENCES BD101_EXEMPLAIRES(IdLivre, IdExemplaire) ON DELETE CASCADE  
);























