-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tablaperiodicabd
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `elemento`
--

DROP TABLE IF EXISTS `elemento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `elemento` (
  `nombreElemento` varchar(50) NOT NULL,
  `simbolo` varchar(45) NOT NULL,
  `tipoElemento` varchar(45) NOT NULL,
  `numeroAtomico` int(11) NOT NULL,
  `masaAtomica` float NOT NULL,
  `urlVideo` varchar(50) NOT NULL,
  PRIMARY KEY (`nombreElemento`),
  UNIQUE KEY `nombreElemento_UNIQUE` (`nombreElemento`),
  UNIQUE KEY `simbolo_UNIQUE` (`simbolo`),
  UNIQUE KEY `urlVideo_UNIQUE` (`urlVideo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elemento`
--

LOCK TABLES `elemento` WRITE;
/*!40000 ALTER TABLE `elemento` DISABLE KEYS */;
INSERT INTO `elemento` VALUES ('Actinio','Ac','Metal',89,227,'actinio.avi'),('Aluminio','Al','Metal',13,26.982,'alumino.avi'),('Americio','Am','Metal',95,243,'Americio.avi'),('Antimonio','Sb','Semi conductor',51,121.76,'antimonio.avi'),('Argon','Ar','Gas noble',18,39.948,'argon.avi'),('Arsenico','As','Semi conductor',33,74.922,'arsenico.avi'),('Astato','At','Semi conductor',85,210,'astato.avi'),('Azufre','S','No metal',16,32.06,'azufre.avi'),('Bario','Ba','Metal',56,137.33,'bario.avi'),('Berilio','Be','Metal',4,9.0122,'berilio.avi'),('Berkelio','Bk','Metal',97,247,'berkelio.avi'),('Bismuto','Bi','Metal',83,208.98,'bismuto.avi'),('Bohrio','Bh','Metal',107,270,'bohrio.avi'),('Boro','B','Semi Conductor',5,10.811,'boro.avi'),('Bromo','Br','No metal',35,79.904,'bromo.avi'),('Cadmio','Cd','Metal',48,112.441,'cadmio.avi'),('Calcio','Ca','Metal',20,40.078,'calcio.avi'),('Californio','Cf','Metal',98,251,'californio.avi'),('Carbono','C','No Metal',6,12.011,'carbono.avi'),('Cerio','Ce','Metal',58,140.12,'cerio.avi'),('Cesio','Cs','Metal',55,132.91,'cesio.avi'),('Cinc','Zn','Metal',30,65.38,'cinc.avi'),('Circonio','Zr','40',40,91.224,'circonio.avi'),('Cloro','Cl','No metal',17,35.45,'cloro.avi'),('Cobalto','Co','Metal',27,58.933,'cobalto.avi'),('Cobre','Cu','Metal',29,63.546,'cobre.avi'),('Copernicio','Cn','Metal',112,285,'copernicio.avi'),('Cromo','Cr','Metal',24,51.996,'cromo.avi'),('Curio','Cm','Metal',96,247,'curio.avi'),('Darmstadio','Ds','Metal',110,281,'darmstadio.avi'),('Disprosio','Dy','Metal',66,162.5,'disprosio.avi'),('Dubnio','Db','Metal',105,268,'dubnio.avi'),('Einstenio','Es','Metal',99,252,'einstenio.avi'),('Erbio','Er','Metal',68,167.26,'erbio.avi'),('Escandio','Sc','Metal',21,44.956,'escandio.avi'),('Estaño','Sn','Metal',50,118.71,'estaño.avi'),('Estroncio','Sr','Metal',38,87.62,'estroncio.avi'),('Europio','Eu','Metal',63,151.96,'europio.avi'),('Fermio','Fm','Metal',100,257,'fermio.avi'),('Flerovio','Fl','Metal',114,289,'flerovio.avi'),('Fluor','F','No Metal',9,18.998,'fluor.avi'),('Fosforo','P','No metal',15,30.974,'fosforo.avi'),('Francio','Fr','Metal',87,223,'francio.avi'),('Gadolinio','Gd','Metal',64,157.25,'gadolinio.avi'),('Galio','Ga','Metal',31,69.723,'galio.avi'),('Germanio','Ge','Semi conductor',32,72.63,'germanio.avi'),('Hafnio','Hf','Metal',72,178.49,'hafnio.avi'),('Hassio','Hs','Metal',108,277,'hassio.avi'),('Helio','He','Gas noble',2,4.0026,'helio.avi'),('Hidrogeno','H','No Metal',1,1.0079,'hidrogeno.avi'),('Hierro','Fe','Metal',26,55.845,'hierro.avi'),('Holmio','Ho','Metal',67,164.93,'holmio.avi'),('Indio','In','Metal',49,114.82,'indio.avi'),('Iridio','Ir','Metal',77,192.22,'iridio.avi'),('Iterbio','Yb','Metal',70,173.05,'iterbio.avi'),('Itrio','Y','Metal',39,88.906,'itrio.avi'),('Kripton','Kr','Gas noble',36,83.798,'kripton.avi'),('Lantano','La','Metal',57,138.91,'lantano.avi'),('Lawrencio','Lr','Metal',103,266,'lawrencio.avi'),('Litio','Li','Metal',3,6.941,'litio.avi'),('Livermorio','Lv','Metal',116,293,'livermorio.avi'),('Lutecio','Lu','Metal',71,174.97,'lutecio.avi'),('Magnesio','Mg','Metal',12,24.305,'magnesio.avi'),('Manganeso','Mn','Metal',25,54.938,'manganeso.avi'),('Meitnerio','Mt','Metal',109,278,'meitnerio.avi'),('Mendelevio','Md','Metal',101,258,'mendelevio.avi'),('Mercurio','Hg','Metal',80,200.59,'mercurio.avi'),('Molibdeno','Mo','Metal',42,95.95,'molibdeno.avi'),('Moscovium','Mc','Metal',115,290,'moscovium.avi'),('Neodimio','Nd','Metal',60,144.24,'neodimio.avi'),('Neon','Ne','Gas noble',10,20.18,'neon.avi'),('Neptunio','Np','Metal',93,237,'neptunio.avi'),('Nihonium','Nh','Metal',113,286,'nihonium.avi'),('Niobio','Nb','Metal',41,92.906,'niobio.avi'),('Niquel','Ni','Metal',28,58.693,'niquel.avi'),('Nitrogeno','N','No Metal',7,14.007,'nitrogeno.avi'),('Nobelio','No','Metal',102,259,'nobelio.avi'),('Oganesson','Og','Metal',118,294,'oganession'),('Oro','Au','Metal',79,196.97,'oro.avi'),('Osmio','Os','Metal',76,190.23,'osmio.avi'),('Oxigeno','O','No Metal',8,15.999,'oxigeno.avi'),('Paladio','Pd','Metal',46,106.42,''),('Plata','Ag','Metal',47,107.87,'plata.avi'),('Platino','Pt','Metal',78,195.08,'platino.avi'),('Plomo','Pb','Metal',82,207.2,'plomo.avi'),('Plutonio','Pu','Metal',94,244,'plutonio.avi'),('Polonio','Po','Metal',84,209,'polonio.avi'),('Potasio','K','Metal',19,39.098,'potasio.avi'),('Praseodimio','Pr','Metal',59,140.91,'praseodimio.avi'),('Prometio','Pm','Metal',61,145,'prometio.avi'),('Protactinio','Pa','Metal',91,231.04,'protactinio.avi'),('Radio','Ra','Metal',88,226,'radio.avi'),('Radon','Rn','Gas noble',86,222,'radon.avi'),('Renio','Re','Metal',75,186.21,'renio.avi'),('Rodio','Rh','Metal',45,102.91,'rodio.avi'),('Roentgenio','Rg','Metal',111,282,'roentgenio.avi'),('Rubidio','Rb','Metal',37,85.468,'rubidio.avi'),('Rutenio','Ru','Metal',44,101.07,'rutenio.avi'),('Rutherfordio','Rf','Metal',104,267,'rutherfordio.avi'),('Samario','Sm','Metal',62,150.36,'samario.avi'),('Seaborgio','Sg','Metal',106,269,'seaborgio.avi'),('Selenio','Se','No metal',34,78.971,'selenio.avi'),('Silicio','Si','Semi conductor',14,28.085,'silicio.avi'),('Sodio','Na','Metal',11,22.99,'sodio.avi'),('Talio','Tl','Metal',81,204.38,'talio.avi'),('Tantalio','Ta','Metal',73,180.95,'tantalio.avi'),('Tecnecio','Tc','Metal',43,93,'tecnecio.avi'),('Telurio','Te','Semi conductor',52,127.6,'telurio.avi'),('Tennessine','Ts','Metal',117,294,'tennessine.avi'),('Terbio','Tb','Metal',65,158.93,'terbio.avi'),('Titanio','Ti','Metal',22,47.867,'titanio.avi'),('Torio','Th','Metal',90,232.04,'torio.avi'),('Tulio','Tm','Metal',69,168.93,'tulio.avi'),('Uranio','U','Metal',92,238.03,'uranio.avi'),('Vanadio','V','Metal',23,50.942,'vanadio.avi'),('Wolframio','W','Metal',74,183.84,'wolframio.avi'),('Xenon','Xe','Gas noble',54,131.29,'xenon.avi'),('Yodo','I','No metal',53,126.9,'yodo.avi');
/*!40000 ALTER TABLE `elemento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operacion`
--

DROP TABLE IF EXISTS `operacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `operacion` (
  `idOperacion` int(11) NOT NULL AUTO_INCREMENT,
  `elementoSolicitado` varchar(45) NOT NULL,
  `fecha` int(12) NOT NULL,
  PRIMARY KEY (`idOperacion`),
  KEY `fk_operacion_elemento_idx` (`elementoSolicitado`),
  CONSTRAINT `fk_operacion_elemento` FOREIGN KEY (`elementoSolicitado`) REFERENCES `elemento` (`nombreElemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operacion`
--

LOCK TABLES `operacion` WRITE;
/*!40000 ALTER TABLE `operacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `operacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla`
--

DROP TABLE IF EXISTS `tabla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tabla` (
  `idTabla` int(11) NOT NULL AUTO_INCREMENT,
  `elementos` varchar(50) NOT NULL,
  PRIMARY KEY (`idTabla`),
  KEY `fk_tabla_elemento_idx` (`elementos`),
  CONSTRAINT `fk_tabla_elemento` FOREIGN KEY (`elementos`) REFERENCES `elemento` (`nombreElemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla`
--

LOCK TABLES `tabla` WRITE;
/*!40000 ALTER TABLE `tabla` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `idTabla` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_usuario_tabla_idx` (`idTabla`),
  CONSTRAINT `fk_usuario_tabla` FOREIGN KEY (`idTabla`) REFERENCES `tabla` (`idTabla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-25 18:43:30

--
-- INSERT ELEMENTOS
--

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Hidrogeno","H","No Metal",1,1.0079,"hidrogeno.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Helio","He","Gas noble",2,4.0026,"helio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Litio","Li","Metal",3,6.941,"litio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Berilio","Be","Metal",4,9.0122,"berilio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Boro","B","Semi Conductor",5,10.811,"boro.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Carbono","C","No Metal",6,12.011,"carbono.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Nitrogeno","N","No Metal",7,14.007,"nitrogeno.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Oxigeno","O","No Metal",8,15.999,"oxigeno.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Fluor","F","No Metal",9,18.998,"fluor.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Neon","Ne","Gas noble",10,20.180,"neon.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Sodio","Na","Metal",11,22.990,"sodio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Magnesio","Mg","Metal",12,24.305,"magnesio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Aluminio","Al","Metal",13,26.982,"alumino.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Silicio","Si","Semi conductor",14,28.085,"silicio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Fosforo","P","No metal",15,30.974,"fosforo.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Azufre","S","No metal",16,32.06,"azufre.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Cloro","Cl","No metal",17,35.45,"cloro.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Argon","Ar","Gas noble",18,39.948,"argon.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Potasio","K","Metal",19,39.098,"potasio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Calcio","Ca","Metal",20,40.078,"calcio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Escandio","Sc","Metal",21,44.956,"escandio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Titanio","Ti","Metal",22,47.867,"titanio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Vanadio","V","Metal",23,50.942,"vanadio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Cromo","Cr","Metal",24,51.996,"cromo.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Manganeso","Mn","Metal",25,54.938,"manganeso.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Hierro","Fe","Metal",26,55.845,"hierro.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Cobalto","Co","Metal",27,58.933,"cobalto.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Niquel","Ni","Metal",28,58.693,"niquel.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Cobre","Cu","Metal",29,63.546,"cobre.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Cinc","Zn","Metal",30,65.38,"cinc.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Galio","Ga","Metal",31,69.723,"galio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Germanio","Ge","Semi conductor",32,72.630,"germanio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Arsenico","As","Semi conductor",33,74.922,"arsenico.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Selenio","Se","No metal",34,78.971,"selenio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Bromo","Br","No metal",35,79.904,"bromo.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Kripton","Kr","Gas noble",36,83.798,"kripton.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Rubidio","Rb","Metal",37,85.468,"rubidio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Estroncio","Sr","Metal",38,87.62,"estroncio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Itrio","Y","Metal",39,88.906,"itrio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Circonio","Zr","40",40,91.224,"circonio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Niobio","Nb","Metal",41,92.906,"niobio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Molibdeno","Mo","Metal",42,95.95,"molibdeno.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Tecnecio","Tc","Metal",43,93,"tecnecio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Rutenio","Ru","Metal",44,101.07,"rutenio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Rodio","Rh","Metal",45,102.91,"rodio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Paladio","Pd","Metal",46,106.42,"");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Plata","Ag","Metal",47,107.87,"plata.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Cadmio","Cd","Metal",48,112.441,"cadmio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Indio","In","Metal",49,114.82,"indio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Estaño","Sn","Metal",50,118.71,"estaño.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Antimonio","Sb","Semi conductor",51,121.76,"antimonio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Telurio","Te","Semi conductor",52,127.60,"telurio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Yodo","I","No metal",53,126.90,"yodo.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Xenon","Xe","Gas noble",54,131.29,"xenon.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Cesio","Cs","Metal",55,132.91,"cesio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Bario","Ba","Metal",56,137.33,"bario.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Lantano","La","Metal",57,138.91,"lantano.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Cerio","Ce","Metal",58,140.12,"cerio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Praseodimio","Pr","Metal",59,140.91,"praseodimio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Neodimio","Nd","Metal",60,144.24,"neodimio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Prometio","Pm","Metal",61,145,"prometio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Samario","Sm","Metal",62,150.36,"samario.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Europio","Eu","Metal",63,151.96,"europio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Gadolinio","Gd","Metal",64,157.25,"gadolinio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Terbio","Tb","Metal",65,158.93,"terbio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Disprosio","Dy","Metal",66,162.50,"disprosio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Holmio","Ho","Metal",67,164.93,"holmio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Erbio","Er","Metal",68,167.26,"erbio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Tulio","Tm","Metal",69,168.93,"tulio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Iterbio","Yb","Metal",70,173.05,"iterbio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Lutecio","Lu","Metal",71,174.97,"lutecio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Hafnio","Hf","Metal",72,178.49,"hafnio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Tantalio","Ta","Metal",73,180.95,"tantalio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Wolframio","W","Metal",74,183.84,"wolframio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Renio","Re","Metal",75,186.21,"renio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Osmio","Os","Metal",76,190.23,"osmio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Iridio","Ir","Metal",77,192.22,"iridio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Platino","Pt","Metal",78,195.08,"platino.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Oro","Au","Metal",79,196.97,"oro.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Mercurio","Hg","Metal",80,200.59,"mercurio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Talio","Tl","Metal",81,204.38,"talio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Plomo","Pb","Metal",82,207.2,"plomo.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Bismuto","Bi","Metal",83,208.98,"bismuto.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Polonio","Po","Metal",84,209,"polonio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Astato","At","Semi conductor",85,210,"astato.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Radon","Rn","Gas noble",86,222,"radon.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Francio","Fr","Metal",87,223,"francio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Radio","Ra","Metal",88,226,"radio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Actinio","Ac","Metal",89,227,"actinio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Torio","Th","Metal",90,232.04,"torio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Protactinio","Pa","Metal",91,231.04,"protactinio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Uranio","U","Metal",92,238.03,"uranio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Neptunio","Np","Metal",93,237,"neptunio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Plutonio","Pu","Metal",94,244,"plutonio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Americio","Am","Metal",95,243,"Americio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Curio","Cm","Metal",96,247,"curio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Berkelio","Bk","Metal",97,247,"berkelio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Californio","Cf","Metal",98,251,"californio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Einstenio","Es","Metal",99,252,"einstenio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Fermio","Fm","Metal",100,257,"fermio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Mendelevio","Md","Metal",101,258,"mendelevio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Nobelio","No","Metal",102,259,"nobelio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Lawrencio","Lr","Metal",103,266,"lawrencio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Rutherfordio","Rf","Metal",104,267,"rutherfordio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Dubnio","Db","Metal",105,268,"dubnio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Seaborgio","Sg","Metal",106,269,"seaborgio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Bohrio","Bh","Metal",107,270,"bohrio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Hassio","Hs","Metal",108,277,"hassio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Meitnerio","Mt","Metal",109,278,"meitnerio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Darmstadio","Ds","Metal",110,281,"darmstadio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Roentgenio","Rg","Metal",111,282,"roentgenio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Copernicio","Cn","Metal",112,285,"copernicio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Nihonium","Nh","Metal",113,286,"nihonium.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Flerovio","Fl","Metal",114,289,"flerovio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Moscovium","Mc","Metal",115,290,"moscovium.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Livermorio","Lv","Metal",116,293,"livermorio.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Tennessine","Ts","Metal",117,294,"tennessine.avi");

insert into elemento(nombreElemento,simbolo,tipoElemento,numeroAtomico,masaAtomica,urlVideo) 
values ("Oganesson","Og","Metal",118,294,"oganession");
