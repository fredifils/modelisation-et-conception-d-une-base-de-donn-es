create database el_massar


use el_massar

create table clients(
	code_client int not null,
	nom varchar(100) not null,
	prenom varchar(100) not null,
	adresse varchar(100) not null,
	ville varchar(100) not null,
	code_poste int not null,
	pays varchar(100) not null,
	telephone int not null,
	email varchar(100) not null,
	primary key (code_client)
)

create table prestations(
	code_presta int not null,
	designation varchar(100) not null,
	primary key (code_presta)
)

create table classes (
	nbre_etoile int not null,
	caracteristiques varchar(100) not null,
	primary key (nbre_etoile)
)

create table hotels(
	id_hotel int not null,
	nom_hotel varchar(100) not null,
	adresse_hotel varchar(100) not null,
	code_postal_hotel int not null,
	tel_hotel int not null,
	primary key (id_hotel),
	nbre_etoile int not null,
	foreign key (nbre_etoile) references classes(nbre_etoile)
)

create table offres(
	prix_presta float not null,
	code_presta int not null,
	id_hotel int not null,
	foreign key (code_presta) references prestations(code_presta),
	foreign key (id_hotel) references hotels (id_hotel)
)

create table categories(
	num_categorie int not null,
	descriptions varchar(100) not null,
	primary key (num_categorie)
)

create table tarifier(
	tarif_unitaire float not null,
	num_categorie int not null,
	nbre_etoile int not null,
	foreign key (num_categorie) references categories (num_categorie),
	foreign key (nbre_etoile) references classes (nbre_etoile)
)

create table chambres(
	num_chambre int not null,
	telephone_chambre int not null,
	num_categorie int not null,
	id_hotel int not null,
	primary key (num_chambre),
	foreign key (num_categorie) references categories (num_categorie),
	foreign key (id_hotel) references hotels (id_hotel)
)

create table consommations(
	num_conso int not null,
	date_conso date not null,
	heure_conso time not null,
	code_client int not null,
	primary key (num_conso),
	foreign key (code_client) references clients (code_client)
)

create table reservations (
	num_reservation int not null,
	date_debut date not null,
	date_fin date not null,
	date_paye_arrhes date not null,
	montant_arrhes float not null,
	num_chambre int not null,
	code_client int not null,
	primary key (num_reservation),
	foreign key (num_chambre) references chambres (num_chambre),
	foreign key (code_client) references clients (code_client)
)

select * from reservations
select * from chambres
select * from categories
select *from classes
select * from hotels
SELECT * FROM clients
select * from offres

----modification d'une colonne

ALTER TABLE chambres
ALTER COLUMN telephone_chambre VARCHAR(100) NOT NULL

alter table clients alter column telephone varchar(100) not null

alter table reservations alter column date_paye_arrhes varchar(100) not null

---------------------------------------------------------------
------------ insertion dans la table clients de la base de données-------------------------------

insert into clients values (1, 'Stephanie', 'Fossey', '2702 Annamark Plaza', 'Haoguantun', '509879', 'China', '438 184 1724', 'sfossey0@smugmug.com');
insert into clients values (2, 'Mervin', 'Ziemecki', '718 Main Drive', 'Sernovodsk', '366702', 'Russia', '799 241 2962', 'mziemecki1@amazon.de');
insert into clients values (3, 'Wait', 'Stading', '8456 Warner Alley', 'Yufa', '948575', 'China', '747 488 9921', 'wstading2@lulu.com');
insert into clients values (4, 'Fancie', 'Rochford', '6 Bunker Hill Point', 'Dodola', '234513', 'Ethiopia', '763 276 4534', 'frochford3@google.ru');
insert into clients values (5, 'Akim', 'Southam', '9 Fairfield Terrace', 'Waitara', '4346', 'New Zealand', '896 185 4869', 'asoutham4@kickstarter.com');
insert into clients values (6, 'Angy', 'Liebermann', '6 Dahle Pass', 'Ōmiya', '3193117', 'Japan', '215 140 3895', 'aliebermann5@hibu.com');
insert into clients values (7, 'Roy', 'Korn', '68 Grasskamp Place', 'Muhos', '91501', 'Finland', '726 197 3918', 'rkorn6@artisteer.com');
insert into clients values (8, 'Lilllie', 'Western', '44803 Holy Cross Way', 'Beijiang', '435423', 'China', '539 214 9494', 'lwestern7@go.com');
insert into clients values (9, 'Maddy', 'Canape', '553 Vera Circle', 'El Espino', '657453', 'Panama', '881 735 8980', 'mcanape8@usgs.gov');
insert into clients values (10, 'Tybalt', 'Maben', '78942 Muir Point', 'Jimaguayú', '598659', 'Cuba', '450 929 9124', 'tmaben9@paypal.com');
insert into clients values (11, 'Brendis', 'Jencken', '02 Dennis Circle', 'Masḩah', '356424', 'Palestinian Territory', '615 692 3114', 'bjenckena@blogspot.com');
insert into clients values (12, 'Clare', 'Davis', '3688 Melrose Pass', 'Yangjia', '086611', 'China', '280 811 5570', 'cdavisb@ocn.ne.jp');
insert into clients values (13, 'Lucinda', 'Porcher', '37935 Jenna Place', 'Wanfang', '536763', 'China', '278 607 7476', 'lporcherc@51.la');
insert into clients values (14, 'Arin', 'Need', '806 Warner Lane', 'São Lourenço', '374700', 'Brazil', '250 754 6879', 'aneedd@free.fr');
insert into clients values (15, 'Emmet', 'Hutable', '2 Ruskin Lane', 'Juan de Acosta', '081048', 'Colombia', '412 160 5155', 'ehutablee@jigsy.com');
insert into clients values (16, 'Kare', 'McGlew', '580 Carberry Alley', 'Tupambaé', '356534', 'Uruguay', '717 336 6927', 'kmcglewf@comsenz.com');
insert into clients values (17, 'Lek', 'Brigge', '6 Sage Court', 'Zhuangxing', '865745', 'China', '524 333 1782', 'lbriggeg@joomla.org');
insert into clients values (18, 'Shae', 'Mosen', '792 Dawn Point', 'Shidu', '545334', 'China', '947 569 6347', 'smosenh@friendfeed.com');
insert into clients values (19, 'Bernadine', 'Barden', '6 Hoard Crossing', 'Ambilobe', '342556', 'Madagascar', '517 357 0463', 'bbardeni@geocities.com');
insert into clients values (20, 'Karyl', 'Starbuck', '17348 Lakewood Gardens Road', 'Joal-Fadiout', '109484', 'Senegal', '233 318 9864', 'kstarbuckj@biblegateway.com');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------- insertion dans la table reservations de la base de données----------------------------

insert into reservations values (1, '5/19/2021', '5/16/2021', '9/17/2021', 70, 1, 1);
insert into reservations values (2, '10/14/2021', '9/4/2021', '8/1/2021', 66, 2, 2);
insert into reservations values (3, '1/23/2022', '10/13/2021', '7/24/2021', 24, 3, 3);
insert into reservations values (4, '8/24/2021', '3/24/2021', '7/13/2021', 97, 4, 4);
insert into reservations values (5, '2/18/2022', '2/13/2022', '4/22/2021', 91, 5, 5);
insert into reservations values (6, '8/9/2021', '5/3/2021', '2/9/2022', 59, 6, 6);
insert into reservations values (7, '9/22/2021', '11/26/2021', '3/1/2021', 82, 7, 7);
insert into reservations values (8, '11/20/2021', '11/19/2021', '10/19/2021', 49, 8, 8);
insert into reservations values (9, '7/15/2021', '1/28/2022', '4/29/2021', 20, 9, 9);
insert into reservations values (10, '9/4/2021', '4/21/2021', '2/14/2022', 24, 10, 10);
insert into reservations values (11, '1/4/2022', '11/27/2021', '11/27/2021', 38, 11, 11);
insert into reservations values (12, '12/27/2021', '4/20/2021', '7/23/2021', 45, 12, 12);
insert into reservations values (13, '3/28/2021', '7/19/2021', '8/24/2021', 50, 13, 13);
insert into reservations values (14, '11/12/2021', '10/11/2021', '11/18/2021', 91, 14, 14);
insert into reservations values (15, '2/18/2022', '3/11/2021', '6/19/2021', 63, 15, 15);
insert into reservations values (16, '5/1/2021', '12/22/2021', '10/3/2021', 90, 16, 16);
insert into reservations values (17, '3/26/2021', '3/1/2021', '9/13/2021', 97, 17, 17);
insert into reservations values (18, '12/4/2021', '8/6/2021', '6/18/2021', 62, 18, 18);
insert into reservations values (19, '5/20/2021', '12/21/2021', '3/7/2021', 77, 19, 19);
insert into reservations values (20, '2/15/2022', '6/11/2021', '1/4/2022', 8, 20, 20);


--- insertion dans la table categorie

insert into categories values (1, 'non pretium quis lectus suspendisse potenti in eleifend quam a odio');
insert into categories values (2, 'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui');
insert into categories values (3, 'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus');
insert into categories values (4, 'lectus vestibulum quam sapien varius ut blandit non interdum in ante');
insert into categories values (5, 'augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis');
insert into categories values (6, 'dui maecenas tristique est et tempus semper est quam pharetra magna');
insert into categories values (7, 'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed');
insert into categories values (8, 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed');
insert into categories values (9, 'amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate');
insert into categories values (10, 'nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque');
insert into categories values (11, 'morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec');
insert into categories values (12, 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse');
insert into categories values (13, 'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat');
insert into categories values (14, 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices');
insert into categories values (15, 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet');
insert into categories values (16, 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien');
insert into categories values (17, 'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor');
insert into categories values (18, 'diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec');
insert into categories values (19, 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla');
insert into categories values (20, 'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et');

-------------------------------------------------------------------------------------------------------------------------------------

--- insertion des données dans la table classes-----------------------

insert into classes values (1, 'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus');
insert into classes values (2, 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in');
insert into classes values (3, 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam');
insert into classes values (4, 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel');
insert into classes values (5, 'sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque');
insert into classes values (6, 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus');
insert into classes values (7, 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum');
insert into classes values (8, 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend');
insert into classes values (9, 'semper sapien a libero nam dui proin leo odio porttitor id consequat');
insert into classes values (10, 'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris');
insert into classes values (11, 'bibendum imperdiet nullam orci pede venenatis non sodales sed');
insert into classes values (12, 'odio odio elementum eu interdum eu tincidunt in leo maecenas');
insert into classes values (13, 'aliquet massa id lobortis convallis tortor risus dapibus');
insert into classes values (14, 'massa quis augue luctus tincidunt nulla mollis molestie');
insert into classes values (15, 'justo eu massa donec dapibus duis at velit eu est');
insert into classes values (16, 'neque sapien placerat ante nulla justo aliquam quis');
insert into classes values (17, 'risus dapibus augue vel accumsan tellus nisi eu orci');
insert into classes values (18, 'aliquet maecenas leo odio condimentum id luctus nec');
insert into classes values (19, 'nulla elit ac nulla sed vel enim sit amet nunc viverra');
insert into classes values (20, 'sapien dignissim vestibulum vestibulum ante ipsum');

-------------------------------------------------------------------------------------------------------------

----------insertion des données dans la hotels de la base de données 

insert into hotels values (1, 'Thedric', '542 Superior Road', '38-450', '9247502717', 1);
insert into hotels values (2, 'Bernadette', '9700 Everett Pass', '00-000', '9923353832', 2);
insert into hotels values (3, 'Hurlee', '64 Mosinee Avenue', '699-3162', '8877901002', 3);
insert into hotels values (4, 'Abbie', '00 Luster Avenue', '393710', '3528326591', 4);
insert into hotels values (5, 'Jethro', '58 East Parkway', '01-001', '8434182746', 5);
insert into hotels values (6, 'Pamelina', '9989 Toban Parkway', '02-002', '7828551376', 6);
insert into hotels values (7, 'Dorisa', '2467 Hazelcrest Point', '03-003', '8081184394', 7);
insert into hotels values (8, 'Cyb', '83 Mitchell Place', '04-004', '8951011035', 8);
insert into hotels values (9, 'Willy', '1 Acker Place', '2826', '4299879775', 9);
insert into hotels values (10, 'Eunice', '389 Ridgeview Drive', '2310', '7827801737', 10);
insert into hotels values (11, 'Simmonds', '2 Eliot Pass', '456684', '9023731217', 11);
insert into hotels values (12, 'Flory', '3 Dorton Avenue', '05-005', '7217767251', 12);
insert into hotels values (13, 'Desmund', '06854 Bobwhite Drive', '142 50', '8689138141', 13);
insert into hotels values (14, 'Fallon', '99881 Artisan Terrace', '10505', '3692366242', 14);
insert into hotels values (15, 'Garik', '1 Packers Plaza', '452122', '8419686131', 15);
insert into hotels values (16, 'Andriette', '94500 Russell Junction', '06-006', '5005378143', 16);
insert into hotels values (17, 'Francoise', '31 Eggendart Center', '96-130', '2137014206', 17);
insert into hotels values (18, 'Rebbecca', '74 Larry Place', '8305', '5518777363', 18);
insert into hotels values (19, 'Harmonie', '6936 Straubel Park','23-122', '4842203748', 19);
insert into hotels values (20, 'Kari', '77692 Dexter Center', '21-876', '1254475960', 20);



---insertion dans la table chambres

insert into chambres values (1, '8915559319', 1, 1);
insert into chambres values (2, '8847597803', 2, 2);
insert into chambres values (3, '2581034374', 3, 3);
insert into chambres values (4, '5032858125', 4, 4);
insert into chambres values (5, '3633781729', 5, 5);
insert into chambres values (6, '3195623203', 6, 6);
insert into chambres values (7, '4134449930', 7, 7);
insert into chambres values (8, '9976027091', 8, 8);
insert into chambres values (9, '7259221488', 9, 9);
insert into chambres values (10, '3577108747', 10, 10);
insert into chambres values (11, '7786196225', 11, 11);
insert into chambres values (12, '9918026481', 12, 12);
insert into chambres values (13, '5383715423', 13, 13);
insert into chambres values (14, '3044735468', 14, 14);
insert into chambres values (15, '6204744556', 15, 15);
insert into chambres values (16, '7642243101', 16, 16);
insert into chambres values (17, '9617987276', 17, 17);
insert into chambres values (18, '8245417587', 18, 18);
insert into chambres values (19, '6552211867', 19, 19);
insert into chambres values (20, '3952490113', 20, 20);

--------------------------------------------------------------------------------------------------------
----------- insertion dans la table offres de la base de données --------------------------------------------------------------------
insert into offres values (87, 1, 1);
insert into offres values (93, 2, 2);
insert into offres values (24, 3, 3);
insert into offres values (67, 4, 4);
insert into offres values (78, 5, 5);
insert into offres values (60, 6, 6);
insert into offres values (92, 7, 7);
insert into offres values (93, 8, 8);
insert into offres values (56, 9, 9);
insert into offres values (95, 10, 10);
insert into offres values (6, 11, 11);
insert into offres values (64, 12, 12);
insert into offres values (79, 13, 13);
insert into offres values (90, 14, 14);
insert into offres values (81, 15, 15);
insert into offres values (14, 16, 16);
insert into offres values (59, 17, 17);
insert into offres values (11, 18, 18);
insert into offres values (66, 19, 19);
insert into offres values (93, 20, 20);


--------------------------------------------------------------------------------------------------------


----------- insertion dans la table prestations de la base de données --------------------------------------------------------------------

insert into prestations values (1, 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed');
insert into prestations values (2, 'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in');
insert into prestations values (3, 'lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend');
insert into prestations values (4, 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis');
insert into prestations values (5, 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante');
insert into prestations values (6, 'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim');
insert into prestations values (7, 'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula');
insert into prestations values (8, 'arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean');
insert into prestations values (9, 'est et tempus semper est quam pharetra magna ac consequat metus');
insert into prestations values (10, 'molestie lorem quisque ut erat curabitur gravida nisi at nibh');
insert into prestations values (11, 'nulla neque libero convallis eget eleifend luctus ultricies');
insert into prestations values (12, 'orci eget orci vehicula condimentum curabitur in libero ut');
insert into prestations values (13, 'cubilia curae donec pharetra magna vestibulum aliquet');
insert into prestations values (14, 'dolor sit amet consectetuer adipiscing elit proin risus');
insert into prestations values (15, 'sapien non mi integer ac neque duis bibendum morbi non');
insert into prestations values (16, 'nunc purus phasellus in felis donec semper sapien a');
insert into prestations values (17, 'velit donec diam neque vestibulum eget vulputate ut');
insert into prestations values (18, 'in blandit ultrices enim lorem ipsum dolor sit amet');
insert into prestations values (19, 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce');
insert into prestations values (20, 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor');
----------------------------------------------------------------------------------------------------------------------------------------------------

select * from offres
----------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------


----------- insertion dans la table consommations de la base de données --------------------------------------------------------------------

insert into consommations values (1, '01/02/2022', '8:06', 1);
insert into consommations values (2, '05/09/2021', '15:50', 2);
insert into consommations values (3, '16/10/2021', '17:14', 3);
insert into consommations values (4, '04/04/2021', '4:45', 4);
insert into consommations values (5, '22/06/2021', '11:14', 5);
insert into consommations values (6, '17/03/2021', '13:38', 6);
insert into consommations values (7, '17/08/2021', '8:58', 7);
insert into consommations values (8, '13/10/2021', '5:16', 8);
insert into consommations values (9, '03/01/2022', '1:16', 9);
insert into consommations values (10, '18/10/2021', '11:22', 10);
insert into consommations values (11, '19/07/2021', '19:29', 11);
insert into consommations values (12, '15/01/2022', '9:15', 12);
insert into consommations values (13, '21/08/2021', '12:03', 13);
insert into consommations values (14, '11/05/2021', '21:16', 14);
insert into consommations values (15, '01/12/2021', '14:30', 15);
insert into consommations values (16, '09/12/2021', '0:06', 16);
insert into consommations values (17, '13/12/2021', '11:27', 17);
insert into consommations values (18, '01/02/2022', '6:50', 18);
insert into consommations values (19, '06/09/2021', '18:24', 19);
insert into consommations values (20, '18/08/2021', '23:56', 20);

select * from consommations

--------------------------------------------------------------------------------------------------------


----------- insertion dans la table tarifier de la base de données --------------------------------------------------------------------

insert into tarifier values (56, 1, 1);
insert into tarifier values (10, 2, 2);
insert into tarifier values (100, 3, 3);
insert into tarifier values (40, 4, 4);
insert into tarifier values (71, 5, 5);
insert into tarifier values (100, 6, 6);
insert into tarifier values (96, 7, 7);
insert into tarifier values (57, 8, 8);
insert into tarifier values (48, 9, 9);
insert into tarifier values (60, 10, 10);
insert into tarifier values (21, 11, 11);
insert into tarifier values (20, 12, 12);
insert into tarifier values (70, 13, 13);
insert into tarifier values (84, 14, 14);
insert into tarifier values (50, 15, 15);
insert into tarifier values (82, 16, 16);
insert into tarifier values (66, 17, 17);
insert into tarifier values (40, 18, 18);
insert into tarifier values (8, 19, 19);
insert into tarifier values (48, 20, 20);