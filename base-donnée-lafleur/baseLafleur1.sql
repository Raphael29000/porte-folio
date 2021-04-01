-- MySQL dump 9.10
--
-- Host: localhost    Database: baseLafleur1
-- ------------------------------------------------------
-- Server version	4.0.18-max-debug

--
-- Table structure for table `categorie`
--

CREATE TABLE categorie (
  cat_code char(3) NOT NULL default '',
  cat_libelle varchar(50) NOT NULL default '',
  PRIMARY KEY  (cat_code)
);

--
-- Dumping data for table `categorie`
--

INSERT INTO categorie VALUES ('bul','Bulbes');
INSERT INTO categorie VALUES ('mas','Plantes � massif');
INSERT INTO categorie VALUES ('ros','Rosiers');

--
-- Table structure for table `produit`
--

CREATE TABLE produit (
  pdt_ref char(3) NOT NULL default '',
  pdt_designation varchar(50) NOT NULL default '',
  pdt_prix decimal(5,2) NOT NULL default '0.00',
  pdt_image varchar(50) NOT NULL default '',
  pdt_categorie char(3) NOT NULL default '',
  PRIMARY KEY  (pdt_ref)
);

--
-- Dumping data for table `produit`
--

INSERT INTO produit VALUES ('b01','3 bulbes de b�gonias',"5.00",'bulbes_begonia','bul');
INSERT INTO produit VALUES ('b02','10 bulbes de dahlias',"12.00",'bulbes_dahlia','bul');
INSERT INTO produit VALUES ('b03','50 gla�euls',"9.00",'bulbes_glaieul','bul');
INSERT INTO produit VALUES ('m01','Lot de 3 marguerites',"5.00",'massif_marguerite','mas');
INSERT INTO produit VALUES ('m02','Pour un bouquet de 6 pens�es',"6.00",'massif_pensee','mas');
INSERT INTO produit VALUES ('m03','M�lange vari� de 10 plantes � massif',"15.00",'massif_melange','mas');
INSERT INTO produit VALUES ('r01','1 pied sp�cial grandes fleurs',"20.00",'rosiers_gdefleur','ros');
INSERT INTO produit VALUES ('r02','Une vari�t� s�lectionn�e pour son parfum',"9.00",'rosiers_parfum','ros');
INSERT INTO produit VALUES ('r03','Rosier arbuste',"8.00",'rosiers_arbuste','ros');

