INSERT INTO UTILISATEUR (NOM, PRENOM, EMAIL, NUMTEL, MOTDEPASSE, LANGUAGE)
VALUES ('John', 'Doe', 'johndoe@gmail.com', '+330612345678',
        '$2a$12$3hQDUblvPShmuQg/.g0Qk.wHAGjqPL54RMO/lNgsei/HQGo0ZLIYm', 'fr');
INSERT INTO PROPRIETAIRE (IDUSER, DATEINSCRIPTION, ISPASSWORDUPDATED, COMMISSION, ADRESSE,
                          ISVALIDATED)
VALUES ((SELECT max(ID) FROM UTILISATEUR), CURRENT_DATE(), TRUE, 20.00, '1 rue de paris', TRUE);
INSERT INTO TYPELOGEMENT (NOM, ICONE)
VALUES ('Appartement', 'MdApartment');
INSERT INTO TYPELOGEMENT (NOM, ICONE)
VALUES ('Maison', 'FaHouse');
INSERT INTO TYPELOGEMENT (NOM, ICONE)
VALUES ('Studio', 'FaHouseUser');
INSERT INTO TYPELOGEMENT (NOM, ICONE)
VALUES ('Loft', 'PiWarehouseFill');
INSERT INTO TYPELOGEMENT (NOM, ICONE)
VALUES ('Penthouse', 'FaPeopleRoof');
INSERT INTO TYPELOGEMENT (NOM, ICONE)
VALUES ('Villa', 'MdVilla');
INSERT INTO TYPELOGEMENT (NOM, ICONE)
VALUES ('StudentResidence', 'PiStudent');
INSERT INTO REGLESLOGEMENT (NOM, ICONE)
VALUES ('Children allowed', 'FaChild');
INSERT INTO REGLESLOGEMENT (NOM, ICONE)
VALUES ('Smoking allowed', 'FaSmoking');
INSERT INTO REGLESLOGEMENT (NOM, ICONE)
VALUES ('Pets allowed', 'MdOutlinePets');
INSERT INTO REGLESLOGEMENT (NOM, ICONE)
VALUES ('Events allowed', 'LuPartyPopper');
INSERT INTO REGLESLOGEMENT (NOM, ICONE)
VALUES ('Infants allowed', 'FaBaby');
INSERT INTO CATEGORIEAMENAGEMENT (NOM)
VALUES ('Kitchen');
INSERT INTO AMENAGEMENT (NOM, ICONE, IDCATEGORIEAMENAGEMENT)
VALUES ('Oven', 'PiOvenDuotone', (SELECT max(ID) FROM CATEGORIEAMENAGEMENT));
INSERT INTO AMENAGEMENT (NOM, ICONE, IDCATEGORIEAMENAGEMENT)
VALUES ('Washer', 'BiSolidWasher', (SELECT max(ID) FROM CATEGORIEAMENAGEMENT));
INSERT INTO CATEGORIEAMENAGEMENT (NOM)
VALUES ('Technology');
INSERT INTO AMENAGEMENT (NOM, ICONE, IDCATEGORIEAMENAGEMENT)
VALUES ('Elevator', 'MdElevator', (SELECT max(ID) FROM CATEGORIEAMENAGEMENT));
INSERT INTO AMENAGEMENT (NOM, ICONE, IDCATEGORIEAMENAGEMENT)
VALUES ('Internet', 'FaWifi', (SELECT max(ID) FROM CATEGORIEAMENAGEMENT));
INSERT INTO CATEGORIEAMENAGEMENT (NOM)
VALUES ('Other');
INSERT INTO AMENAGEMENT (NOM, ICONE, IDCATEGORIEAMENAGEMENT)
VALUES ('Free Parking', 'FaParking', (SELECT max(ID) FROM CATEGORIEAMENAGEMENT));
INSERT INTO AMENAGEMENT (NOM, ICONE, IDCATEGORIEAMENAGEMENT)
VALUES ('Swimming Pool', 'PiSwimmingPool', (SELECT max(ID) FROM CATEGORIEAMENAGEMENT));
INSERT INTO AMENAGEMENT (NOM, ICONE, IDCATEGORIEAMENAGEMENT)
VALUES ('Air Conditioning', 'TbAirConditioning', (SELECT max(ID) FROM CATEGORIEAMENAGEMENT));
INSERT INTO AMENAGEMENT (NOM, ICONE, IDCATEGORIEAMENAGEMENT)
VALUES ('Handicap Accessible', 'BiHandicap', (SELECT max(ID) FROM CATEGORIEAMENAGEMENT));
INSERT INTO LOGEMENT (TITRE, ISLOUABLE, NOMBRESDECHAMBRES, NOMBRESDELITS, NOMBRESSALLESDEBAINS,
                      CAPACITEMAXPERSONNE,
                      NOMBRESNUITSMIN, DESCRIPTION, NOTE, PRIXPARNUIT, DEFAULTCHECKIN,
                      DEFAULTCHECKOUT,
                      INTERVALRESERVATION, VILLE, ADRESSE, CODEPOSTAL, PAYS, ETAGE, NUMERODEPORTE,
                      IDTYPELOGEMENT,
                      IDPROPRIETAIRE)
VALUES ('Joli petit endroit', true, 1, 1, 1, 1, 6, 'une description', 2.5, 75,
        SUBSTRING(CURRENT_TIME(), 1, 5),
        SUBSTRING(CURRENT_TIME(), 1, 5), 1, 'Etampes', '85 rue de la république', '91150', 'France',
        '1', '1', 1,
        (SELECT max(ID) FROM UTILISATEUR));
INSERT INTO DEPENSE (LIBELLE, PRIX, DATE, IDLOGEMENT) VALUES ('Electricity', 20.00, (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 10 DAY)), 1);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/1_1', (SELECT max(ID) FROM LOGEMENT), TRUE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/1_2', (SELECT max(ID) FROM LOGEMENT), FALSE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/1_2', (SELECT max(ID) FROM LOGEMENT), FALSE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/1_2', (SELECT max(ID) FROM LOGEMENT), FALSE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/1_2', (SELECT max(ID) FROM LOGEMENT), FALSE);
INSERT INTO LOGEMENT (TITRE, ISLOUABLE, NOMBRESDECHAMBRES, NOMBRESDELITS, NOMBRESSALLESDEBAINS,
                      CAPACITEMAXPERSONNE,
                      NOMBRESNUITSMIN, DESCRIPTION, NOTE, PRIXPARNUIT, DEFAULTCHECKIN,
                      DEFAULTCHECKOUT,
                      INTERVALRESERVATION, VILLE, ADRESSE, CODEPOSTAL, PAYS, ETAGE, NUMERODEPORTE,
                      IDTYPELOGEMENT,
                      IDPROPRIETAIRE)
VALUES ('superbe', false, 1, 1, 1, 1, 6, 'une description', 2.5, 62,
        SUBSTRING(CURRENT_TIME(), 1, 5),
        SUBSTRING(CURRENT_TIME(), 1, 5), 1, 'Etampes', '60 rue de la république', '91150', 'France',
        '1', '1', 1,
        (SELECT max(ID) FROM UTILISATEUR));
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/2_1', (SELECT max(ID) FROM LOGEMENT), TRUE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/2_2', (SELECT max(ID) FROM LOGEMENT), FALSE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/2_2', (SELECT max(ID) FROM LOGEMENT), FALSE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/2_2', (SELECT max(ID) FROM LOGEMENT), FALSE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/2_2', (SELECT max(ID) FROM LOGEMENT), FALSE);
INSERT INTO RESPECTER (IDLOGEMENT, IDREGLESLOGEMENT)
VALUES (1, 1);
INSERT INTO RESPECTER (IDLOGEMENT, IDREGLESLOGEMENT)
VALUES (1, 2);
INSERT INTO RESPECTER (IDLOGEMENT, IDREGLESLOGEMENT)
VALUES (1, 3);
INSERT INTO RESPECTER (IDLOGEMENT, IDREGLESLOGEMENT)
VALUES (1, 4);
INSERT INTO RESPECTER (IDLOGEMENT, IDREGLESLOGEMENT)
VALUES (1, 5);
INSERT INTO CONTENIR (IDLOGEMENT, IDAMENAGEMENT)
VALUES (1, 1);
INSERT INTO CONTENIR (IDLOGEMENT, IDAMENAGEMENT)
VALUES (1, 2);
INSERT INTO CONTENIR (IDLOGEMENT, IDAMENAGEMENT)
VALUES (1, 3);
INSERT INTO CONTENIR (IDLOGEMENT, IDAMENAGEMENT)
VALUES (1, 4);
INSERT INTO CONTENIR (IDLOGEMENT, IDAMENAGEMENT)
VALUES (1, 5);
INSERT INTO CONTENIR (IDLOGEMENT, IDAMENAGEMENT)
VALUES (1, 6);
INSERT INTO CONTENIR (IDLOGEMENT, IDAMENAGEMENT)
VALUES (1, 7);
INSERT INTO CONTENIR (IDLOGEMENT, IDAMENAGEMENT)
VALUES (1, 8);
INSERT INTO CONTENIR (IDLOGEMENT, IDAMENAGEMENT)
VALUES (2, 8);
INSERT INTO RESPECTER (IDLOGEMENT, IDREGLESLOGEMENT)
VALUES (2, 5);
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293249', 'done', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 10 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 20 DAY)), 1,
        CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293250', 'done', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 30 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 40 DAY)), 1,
        CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293251', 'done', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 50 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 60 DAY)), 1,
        CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293252', 'done', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 70 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 80 DAY)), 1,
        CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293253', 'done', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 90 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 100 DAY)), 1,
        CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293254', 'payed', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5), CURRENT_DATE(),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 110 DAY)), 1, CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293255', 'payed', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 120 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 130 DAY)), 1, CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293256', 'payed', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 140 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 150 DAY)), 1, CURRENT_DATE(), 'fr');

INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293149', 'done', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 160 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 170 DAY)), 2,
        CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293150', 'done', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 180 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 190 DAY)), 2,
        CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293151', 'done', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 200 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 210 DAY)), 2,
        CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293152', 'done', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 220 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 230 DAY)), 2,
        CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293153', 'done', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 240 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 250 DAY)), 2,
        CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293154', 'payed', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5), CURRENT_DATE(),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 260 DAY)), 2, CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293155', 'payed', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 270 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 280 DAY)), 2, CURRENT_DATE(), 'fr');
INSERT INTO RESERVATION (IDCOMMANDE, STATUT, EMAIL, NUMTEL, NOM, PRENOM, NBPERSONNES, MONTANT,
                         CHECKIN, CHECKOUT,
                         DATEARRIVEE, DATEDEPART, IDLOGEMENT, DATERESERVATION, LANGUAGE)
VALUES ('RESA-293156', 'payed', 'luclient@gmail.com', '0698762345', 'Lient', 'Luc', 1, 25.30,
        SUBSTRING(CURRENT_TIME(), 1, 5), SUBSTRING(CURRENT_TIME(), 1, 5),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 290 DAY)),
        (SELECT DATE_ADD(CURRENT_DATE, INTERVAL 300 DAY)), 2, CURRENT_DATE(), 'fr');

INSERT INTO UTILISATEUR (NOM, PRENOM, EMAIL, NUMTEL, MOTDEPASSE, LANGUAGE)
VALUES ('Jean', 'Paul', 'jeanpaul@gmail.com', '+330623456789',
        '$2a$12$3hQDUblvPShmuQg/.g0Qk.wHAGjqPL54RMO/lNgsei/HQGo0ZLIYm', 'fr');
INSERT INTO PROPRIETAIRE (IDUSER, DATEINSCRIPTION, ISPASSWORDUPDATED, COMMISSION, ADRESSE,
                          ISVALIDATED)
VALUES ((SELECT max(ID) FROM UTILISATEUR), CURRENT_TIME(), TRUE, 20.00, '10 rue de marseille',
        TRUE);
INSERT INTO LOGEMENT (TITRE, ISLOUABLE, NOMBRESDECHAMBRES, NOMBRESDELITS, NOMBRESSALLESDEBAINS,
                      CAPACITEMAXPERSONNE,
                      NOMBRESNUITSMIN, DESCRIPTION, NOTE, PRIXPARNUIT, DEFAULTCHECKIN,
                      DEFAULTCHECKOUT,
                      INTERVALRESERVATION, VILLE, ADRESSE, CODEPOSTAL, PAYS, ETAGE, NUMERODEPORTE,
                      IDTYPELOGEMENT,
                      IDPROPRIETAIRE)
VALUES ('Maison', true, 1, 1, 1, 1, 6, 'une description', 2.5, 120, SUBSTRING(CURRENT_TIME(), 1, 5),
        SUBSTRING(CURRENT_TIME(), 1, 5), 1, 'Etampes', '95 rue de la république', '91150', 'France',
        '1', '1', 1,
        (SELECT max(ID) FROM UTILISATEUR));
INSERT INTO CONTENIR (IDLOGEMENT, IDAMENAGEMENT)
VALUES (3, 8);
INSERT INTO RESPECTER (IDLOGEMENT, IDREGLESLOGEMENT)
VALUES (3, 5);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/3_1', (SELECT max(ID) FROM LOGEMENT), TRUE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/3_1', (SELECT max(ID) FROM LOGEMENT), TRUE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/3_1', (SELECT max(ID) FROM LOGEMENT), TRUE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/3_1', (SELECT max(ID) FROM LOGEMENT), TRUE);
INSERT INTO IMAGELOGEMENT (URL, IDLOGEMENT, ISMAINIMAGE)
VALUES ('House%20images/3_1', (SELECT max(ID) FROM LOGEMENT), TRUE);

INSERT INTO UTILISATEUR (NOM, PRENOM, EMAIL, NUMTEL, MOTDEPASSE, LANGUAGE)
VALUES ('Jade', 'Min', 'jadmin@gmail.com', '+330634567890',
        '$2a$12$3hQDUblvPShmuQg/.g0Qk.wHAGjqPL54RMO/lNgsei/HQGo0ZLIYm', 'fr');
INSERT INTO ADMINISTRATEUR (IDUSER)
VALUES ((SELECT max(ID) FROM UTILISATEUR));

INSERT INTO UTILISATEUR (NOM, PRENOM, EMAIL, NUMTEL, MOTDEPASSE, LANGUAGE)
VALUES ('Ilad', 'Min', 'jiladmin@gmail.com', '+330634567891',
        '$2a$12$3hQDUblvPShmuQg/.g0Qk.wHAGjqPL54RMO/lNgsei/HQGo0ZLIYm', 'fr');
INSERT INTO ADMINISTRATEUR (IDUSER)
VALUES ((SELECT max(ID) FROM UTILISATEUR));