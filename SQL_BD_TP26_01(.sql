CREATE TABLE Likes_Follow(
id SERIAL PRIMARY KEY,
likes_photo INT NOT NULL,
likes_commentaires INT NOT NULL,
follow INT NOT NULL
);

CREATE TABLE Utilisateurs(
id SERIAL PRIMARY KEY,
nom VARCHAR(50) NOT NULL,
prénom VARCHAR(50) NOT NULL ,
pseudonyme VARCHAR(20) NOT NULL UNIQUE,
email VARCHAR(50) NOT NULL UNIQUE,
mot_de_passe VARCHAR(50) NOT NULL,
avatar VARCHAR(50),
bio TEXT,
follow_id INT, FOREIGN KEY (follow_id) REFERENCES Likes_Follow(id) ON DELETE SET NULL ---LINK
);

CREATE TABLE Commentaires(
id SERIAL PRIMARY KEY,
contenu TEXT NOT NULL,
like_id INT, FOREIGN KEY (like_id) REFERENCES Likes_Follow(id) ON DELETE SET NULL, ---LINK,
utilisateur_id INT, FOREIGN KEY (utilisateur_id) REFERENCES Utilisateurs(id) ON DELETE SET NULL ---: Utilisateur_id ---LINK,
);



CREATE TABLE Photos(
id SERIAL PRIMARY KEY,
url Varchar(50) NOT NULL,
légende TEXT,
latitude NUMERIC(4,2) CHECK(Latitude BETWEEN -90 AND 90),
longitude NUMERIC(5,2) CHECK(Longitude BETWEEN -180 AND 180),
utilisateur_id INT, FOREIGN KEY (utilisateur_id) REFERENCES Utilisateurs(id) ON DELETE SET NULL, -- : Utilisateur ---LINK,
commentaire_id INT, FOREIGN KEY (commentaire_id) REFERENCES Commentaires(id) ON DELETE SET NULL, -- : Commentaires ---LINK,
like_id INT, FOREIGN KEY (like_id) REFERENCES Likes_Follow(id) ON DELETE SET NULL -- : Likes_photo ---LINK
);



insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (0, 449, 55, 17);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (1, 323, 45, 16);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (2, 847, 78, 50);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (3, 319, 90, 34);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (4, 807, 25, 47);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (5, 610, 23, 40);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (6, 446, 9, 31);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (7, 840, 70, 30);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (8, 814, 53, 1);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (9, 461, 21, 21);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (10, 224, 50, 23);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (11, 170, 17, 27);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (12, 906, 73, 44);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (13, 660, 44, 36);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (14, 802, 11, 36);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (15, 153, 42, 5);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (16, 931, 26, 2);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (17, 353, 81, 33);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (18, 25, 66, 46);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (19, 156, 71, 42);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (20, 20, 98, 5);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (21, 86, 96, 14);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (22, 996, 23, 39);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (23, 26, 19, 44);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (24, 612, 87, 44);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (25, 754, 36, 16);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (26, 714, 12, 38);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (27, 553, 30, 45);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (28, 833, 3, 17);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (29, 156, 95, 33);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (30, 353, 17, 37);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (31, 417, 84, 38);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (32, 453, 5, 38);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (33, 431, 26, 35);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (34, 392, 85, 2);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (35, 255, 90, 17);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (36, 296, 5, 39);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (37, 275, 37, 19);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (38, 608, 26, 18);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (39, 817, 47, 30);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (40, 795, 72, 39);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (41, 450, 93, 6);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (42, 529, 9, 27);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (43, 120, 27, 43);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (44, 23, 17, 49);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (45, 807, 13, 26);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (46, 100, 35, 33);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (47, 604, 12, 40);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (48, 641, 53, 2);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (49, 589, 90, 43);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (50, 628, 26, 42);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (51, 845, 96, 21);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (52, 999, 31, 41);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (53, 485, 93, 15);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (54, 86, 10, 24);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (55, 952, 20, 20);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (56, 95, 80, 25);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (57, 29, 19, 2);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (58, 193, 45, 12);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (59, 200, 45, 50);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (60, 18, 74, 47);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (61, 616, 37, 31);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (62, 505, 67, 46);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (63, 166, 92, 7);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (64, 382, 94, 10);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (65, 171, 98, 27);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (66, 744, 17, 24);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (67, 4, 33, 50);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (68, 726, 8, 46);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (69, 692, 98, 45);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (70, 38, 46, 24);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (71, 987, 35, 11);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (72, 623, 99, 2);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (73, 807, 22, 27);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (74, 911, 72, 22);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (75, 81, 93, 20);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (76, 343, 42, 24);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (77, 140, 38, 13);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (78, 639, 42, 43);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (79, 730, 59, 35);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (80, 412, 48, 42);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (81, 739, 95, 45);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (82, 255, 1, 17);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (83, 798, 62, 37);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (84, 722, 83, 32);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (85, 453, 45, 32);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (86, 150, 50, 23);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (87, 127, 47, 40);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (88, 374, 49, 34);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (89, 650, 45, 26);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (90, 51, 40, 27);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (91, 243, 44, 33);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (92, 282, 53, 29);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (93, 145, 57, 45);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (94, 141, 36, 29);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (95, 274, 96, 19);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (96, 608, 2, 38);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (97, 205, 91, 11);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (98, 701, 48, 6);
insert into Likes_Follow (id, likes_photo, likes_commentaires, follow) values (99, 156, 15, 25);


insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (0, 'Mallabon', 'Uò', 'bmallabon0', 'gmallabon0@icq.com', 'tvXmtCgttuRs', 'https://reddit.com', 'Ujnbcnlppx wjukdexfc asbry !', 0);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (1, 'Snowdon', 'Frédérique', 'asnowdon1', 'asnowdon1@sciencedirect.com', 'BLyrf8xqaki8', 'http://comcast.net', 'Xibhrschpd jrtwfytfa xeawf !', 1);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (2, 'Hoffner', 'Rachèle', 'ihoffner2', 'uhoffner2@nsw.gov.au', 'HMVeWf4z', 'https://amazon.co.uk', 'Ltmbngdfaw hpdikiumi puonv !', 2);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (3, 'Snow', 'Cléopatre', 'msnow3', 'tsnow3@ustream.tv', 'PxoX10', 'https://ebay.com', 'Aecpqatbay cvluccrkz rrlod !', 3);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (4, 'Longstaffe', 'Lorène', 'alongstaffe4', 'blongstaffe4@fc2.com', 'sGu35SAEO8', 'http://yahoo.co.jp', 'Qwfyjnlhvc pqtrmgerd dmmmj !', 4);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (5, 'Cosgrave', 'Noëlla', 'dcosgrave5', 'icosgrave5@scientificamerican.com', '4y9pmq4oq', 'http://meetup.com', 'Chydndtbvk lxctgvmtj tffcj !', 5);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (6, 'Chaffer', 'Marie-thérèse', 'mchaffer6', 'zchaffer6@unicef.org', '2ZGyOCYb7', 'http://fastcompany.com', 'Dhffknuicc jkxbpjfru ugldi !', 6);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (7, 'Pym', 'Solène', 'dpym7', 'epym7@desdev.cn', 'TpfiqQs9OmA', 'http://fda.gov', 'Zavsddugvo khzockvcx vvwhu !', 7);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (8, 'Densham', 'Almérinda', 'mdensham8', 'ldensham8@parallels.com', 'CRYyjLw', 'https://businessinsider.com', 'Ciyogujtwi ihckpmtjq rgdmh !', 8);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (9, 'Sager', 'Nélie', 'asager9', 'osager9@ebay.co.uk', 'T00ucl', 'http://earthlink.net', 'Wegrzbnloh onpqorizw whzam !', 9);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (10, 'Albinson', 'Anaïs', 'halbinsona', 'galbinsona@hao123.com', 'UV0PcncXxm', 'http://icq.com', 'Iqvuzficep bmvpnhgue ekruw !', 10);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (11, 'Yakovlev', 'Loïs', 'cyakovlevb', 'syakovlevb@bloomberg.com', '6weA7F5Gq1', 'http://ameblo.jp', 'Hhxhastixh llbwilgll ihcef !', 11);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (12, 'Dubble', 'Maëlys', 'fdubblec', 'kdubblec@csmonitor.com', '0DXcffStr8', 'http://ustream.tv', 'Hxgpwbhmxp drodebecn fegps !', 12);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (13, 'Pandey', 'Rachèle', 'rpandeyd', 'fpandeyd@canalblog.com', '6kyWliY', 'https://intel.com', 'Qxtcigxnxs delfdtylp gcnlk !', 13);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (14, 'Pascall', 'Méng', 'rpascalle', 'lpascalle@washington.edu', '5ewFAjqhC', 'https://sfgate.com', 'Oltaawnlbr kabebgcqy vffen !', 14);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (15, 'Sircomb', 'Gösta', 'asircombf', 'rsircombf@jigsy.com', 'Xc6qhQoZZ1', 'https://narod.ru', 'Wsqzqdxukv nqfdingif miaqd !', 15);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (16, 'Pender', 'Lyséa', 'cpenderg', 'gpenderg@adobe.com', 'yptkTH1zfk7', 'http://uiuc.edu', 'Tbadfsdqxq tpxopkozf wroli !', 16);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (17, 'Olden', 'Hélène', 'soldenh', 'soldenh@economist.com', 'BcAVCAsaDGin', 'https://yahoo.com', 'Ljvcmyypjv glcocvdax qpljy !', 17);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (18, 'Dunmore', 'Françoise', 'cdunmorei', 'ddunmorei@unicef.org', 'RT7QS1', 'http://odnoklassniki.ru', 'Jumycbfvqe bidwevwiw jgvtw !', 18);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (19, 'Gibke', 'Aí', 'agibkej', 'fgibkej@flavors.me', 'UTMDMo', 'https://bluehost.com', 'Ogxewmtzck vblzbjwbb grnaf !', 19);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (20, 'Mounsey', 'Sòng', 'jmounseyk', 'jmounseyk@jiathis.com', 'UR5ELdT1y', 'http://pinterest.com', 'Uvfsoxomnm hhtvlilzi zequd !', 20);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (21, 'Facher', 'Mélinda', 'rfacherl', 'dfacherl@cam.ac.uk', 'RSsBVpN', 'https://blogger.com', 'Xuygiqpfma sfzcqqzfy gbkki !', 21);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (22, 'Mostyn', 'Léane', 'smostynm', 'mmostynm@nasa.gov', 'xbFmDu0OwZU', 'https://twitpic.com', 'Mqlpbjglgx ubsucylyx wiksx !', 22);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (23, 'Dalby', 'Laurélie', 'adalbyn', 'kdalbyn@bizjournals.com', 'wO2zCxWtP', 'http://cnet.com', 'Cjbgerlxnc mtcaetmga gkxua !', 23);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (24, 'Killelay', 'Publicité', 'ekillelayo', 'rkillelayo@usatoday.com', '9balA8QsTU6', 'https://cmu.edu', 'Zwiobnppta apamupjgy yamom !', 24);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (25, 'Wilprecht', 'Valérie', 'hwilprechtp', 'mwilprechtp@techcrunch.com', '6EvyxQ3oEes4', 'http://fc2.com', 'Brtzdnqcdb bhbsgscop xgsio !', 25);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (26, 'Sprules', 'Anaëlle', 'hsprulesq', 'jsprulesq@stanford.edu', 'RCtZzXDVM', 'https://woothemes.com', 'Cgtzqnfbmz yuowssopw ftdwz !', 26);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (27, 'Blakes', 'Publicité', 'sblakesr', 'pblakesr@goo.gl', 'Yf4Y6QozR', 'https://dailymail.co.uk', 'Xeljwssbxn lafmvlzjq inkfz !', 27);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (28, 'Chellenham', 'Cinéma', 'dchellenhams', 'mchellenhams@sitemeter.com', 'lIYKZ6FmfPr', 'http://freewebs.com', 'Ygapwqscko ebdogiewi tixdy !', 28);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (29, 'Tebbit', 'Mylène', 'jtebbitt', 'ktebbitt@skype.com', 'KQMEjJin', 'http://so-net.ne.jp', 'Kwgvfgflqo nrieimcud ujpjv !', 29);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (30, 'Breward', 'Audréanne', 'fbrewardu', 'abrewardu@samsung.com', 'wzEf0qq', 'http://europa.eu', 'Ocbyntwffs dauchywhn occpb !', 30);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (31, 'Greetham', 'Léane', 'rgreethamv', 'wgreethamv@altervista.org', 'VKQY3BCZhn', 'http://independent.co.uk', 'Obeeijmqxh jtzzttmwt lzbxj !', 31);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (32, 'Gisburne', 'Lèi', 'lgisburnew', 'bgisburnew@eepurl.com', 'Raqd7Np3Ldu', 'http://weibo.com', 'Xpjyaiudjh ooyppetpt lhzfh !', 32);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (33, 'Hallawell', 'Méryl', 'ehallawellx', 'rhallawellx@unblog.fr', '6f6lXQEvd', 'http://mapquest.com', 'Phqcbljjks emicwcmrf bvopd !', 33);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (34, 'Tromans', 'Estée', 'gtromansy', 'htromansy@webnode.com', 'oV1jHKhn', 'https://myspace.com', 'Umctlvuroz pexnnoxgc ztxhe !', 34);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (35, 'Blaxland', 'Léone', 'bblaxlandz', 'cblaxlandz@uiuc.edu', 'q3alX6b', 'https://mashable.com', 'Ohdtzjdysx uximjwehu ozyhq !', 35);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (36, 'Smedmoor', 'Åsa', 'lsmedmoor10', 'csmedmoor10@google.cn', 'hCAGmCbndt', 'http://cyberchimps.com', 'Cvyhiblmxk hnpfbsaem bjshk !', 36);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (37, 'Gerald', 'Dafnée', 'fgerald11', 'dgerald11@ca.gov', 'z5uxxgO6DG', 'https://ed.gov', 'Xzslnarupr pbtkiqecv gcmky !', 37);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (38, 'Easlea', 'Cléopatre', 'jeaslea12', 'neaslea12@java.com', 'ERAPT44', 'http://washingtonpost.com', 'Xmbwecemlj oldizxeam oyxwz !', 38);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (39, 'Haggart', 'Stéphanie', 'mhaggart13', 'hhaggart13@1und1.de', '24vph8x', 'https://xing.com', 'Pmzadatedg ppogfoxhd rbdza !', 39);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (40, 'Swinfen', 'Valérie', 'cswinfen14', 'jswinfen14@github.com', 'yTPSlLlRm', 'http://businessinsider.com', 'Deporwowiq ieligmbbe tosyz !', 40);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (41, 'Henriksson', 'Audréanne', 'mhenriksson15', 'zhenriksson15@opensource.org', 'SUgm44sc9', 'http://privacy.gov.au', 'Ncbyafzqeq gnldztmxi ysees !', 41);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (42, 'Hort', 'Anaïs', 'dhort16', 'zhort16@salon.com', '7D4sFT', 'http://cnet.com', 'Gkpoiaypay dlnoelryr mrnjp !', 42);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (43, 'Just', 'Maëlyss', 'rjust17', 'tjust17@tamu.edu', 'pPQPKg5', 'http://slideshare.net', 'Sokzrbmuek adocfkkqc qdbsx !', 43);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (44, 'Kench', 'Thérèsa', 'wkench18', 'bkench18@liveinternet.ru', 'sv9qbjLOmdk', 'https://discuz.net', 'Lknfghysbe kvlztuhnp sshqo !', 44);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (45, 'Tather', 'Gisèle', 'mtather19', 'ltather19@blogspot.com', 'n2rPeIwk5D', 'https://sourceforge.net', 'Ewktcnxgrj cgaqwkzri yelts !', 45);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (46, 'Ofer', 'Cinéma', 'iofer1a', 'mofer1a@ucsd.edu', 'a6YDj0Zy', 'https://netvibes.com', 'Oeksvaneqi ogwfkjpaq glieu !', 46);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (47, 'Sanper', 'Cécilia', 'ssanper1b', 'psanper1b@wikispaces.com', 'AqS5bILkDIJ', 'https://pcworld.com', 'Exyndpbtub gcmaxgzjd gwlje !', 47);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (48, 'MacHostie', 'Maïté', 'smachostie1c', 'gmachostie1c@trellian.com', 'xgYrH7', 'https://businessinsider.com', 'Xepcvohial ejctzmkre djpol !', 48);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (49, 'Gontier', 'Clémentine', 'pgontier1d', 'cgontier1d@histats.com', 'NjHrD3', 'https://smh.com.au', 'Srlvoaketp gcekrypyr iyizz !', 49);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (50, 'MacKellar', 'Cinéma', 'amackellar1e', 'cmackellar1e@apache.org', 'ShAGdHs', 'http://123-reg.co.uk', 'Tpjongrxwi wdzefjnbq btiuv !', 50);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (51, 'Kloss', 'Méryl', 'akloss1f', 'gkloss1f@bloomberg.com', 'pD39eVVBx', 'https://cbslocal.com', 'Rmjkdrsxgu kpgdpfvvy xmfht !', 51);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (52, 'Arboine', 'Méline', 'larboine1g', 'larboine1g@jalbum.net', 'eEmv8yxynO', 'https://chron.com', 'Hznlomzlnq zqlzyojtu cnyzm !', 52);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (53, 'Marcinkowski', 'Danièle', 'tmarcinkowski1h', 'nmarcinkowski1h@lycos.com', 'KvzQURdXbTGA', 'http://printfriendly.com', 'Owekwxyinn vrpjtouni nhdha !', 53);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (54, 'Comer', 'Cécilia', 'acomer1i', 'hcomer1i@springer.com', 'RvR8VVa3Lp', 'http://photobucket.com', 'Lanxlhdoeu tsonaxdaz aggoa !', 54);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (55, 'Smogur', 'Tán', 'ksmogur1j', 'asmogur1j@aol.com', 'CmmzwYCl1Lna', 'https://acquirethisname.com', 'Lehnmfkltn gnastdhyd wseda !', 55);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (56, 'Masserel', 'Maëlann', 'tmasserel1k', 'rmasserel1k@businesswire.com', 't6rbOz', 'https://ucoz.com', 'Muwbqhfuft jbmxtscol nzpps !', 56);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (57, 'Raoul', 'Geneviève', 'vraoul1l', 'braoul1l@biblegateway.com', 'CxUPlV', 'http://spiegel.de', 'Gxnybrskpd isfwnzqge srgen !', 57);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (58, 'Ottewell', 'Rachèle', 'bottewell1m', 'kottewell1m@ocn.ne.jp', 'KWrqnMhLm', 'http://cocolog-nifty.com', 'Pwwnnyrnlx oxvwuxrqe baxqr !', 58);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (59, 'Boni', 'Andrée', 'tboni1n', 'mboni1n@infoseek.co.jp', '165YcFalQ', 'http://ovh.net', 'Snqhmrxjhx qkupzlixi kxdmo !', 59);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (60, 'Heak', 'Athéna', 'bheak1o', 'wheak1o@purevolume.com', '84oPGzRJinb', 'https://digg.com', 'Gelsglaupw ehqbfoddn acrxt !', 60);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (61, 'Burnyeat', 'Sélène', 'eburnyeat1p', 'cburnyeat1p@w3.org', 'nCiImWpY', 'https://alibaba.com', 'Nypbqsoflu jsfjancht cfxmn !', 61);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (62, 'Diggle', 'Cécile', 'fdiggle1q', 'kdiggle1q@smugmug.com', 'NUdlD6jkb', 'https://mashable.com', 'Ovxxuceqmp rnmxwiytc bzcwi !', 62);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (63, 'Bayle', 'Mélinda', 'tbayle1r', 'ebayle1r@comsenz.com', 'H4dAJT7Fh', 'https://facebook.com', 'Ovctqqwjqu tinadtynm hssjx !', 63);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (64, 'Assad', 'Dà', 'massad1s', 'sassad1s@princeton.edu', 'X9HJbAOv', 'https://seattletimes.com', 'Mqdnitsvaf htlefxgex rcltk !', 64);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (65, 'Greensite', 'Mélys', 'sgreensite1t', 'qgreensite1t@a8.net', 'tJ4vSWoB', 'https://craigslist.org', 'Jmnbtwvzmm uypfbrefq qhdyu !', 65);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (66, 'Le Monnier', 'Sélène', 'mlemonnier1u', 'klemonnier1u@prlog.org', 'Ajfj7H', 'https://forbes.com', 'Tbidcmbshv loodghfyl yogdf !', 66);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (67, 'Heald', 'Mahélie', 'jheald1v', 'kheald1v@disqus.com', 'FA1UE2etRdbr', 'https://biglobe.ne.jp', 'Coxbediend uvpqdjqxd awfri !', 67);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (68, 'Sarl', 'Maïlis', 'ysarl1w', 'gsarl1w@lulu.com', 'oqL81wyN7w', 'http://prweb.com', 'Qkyjerqhpk remdpozty iazhj !', 68);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (69, 'Grishagin', 'Léonie', 'kgrishagin1x', 'fgrishagin1x@si.edu', 'mpGl4y60v', 'http://jiathis.com', 'Dvsmgtvuvb ipzvoblgz dltqc !', 69);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (70, 'Sex', 'Sòng', 'csex1y', 'isex1y@wordpress.com', 'pB7Rpo1wdv', 'https://globo.com', 'Qklnlkjyul jvgbrzccy faujw !', 70);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (71, 'Ambrosoli', 'Dafnée', 'hambrosoli1z', 'bambrosoli1z@washington.edu', 'iNHJQ8L3UN', 'https://gravatar.com', 'Xhqgmvqsuy vdphqhhhj crfjq !', 71);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (72, 'Ruller', 'Marylène', 'lruller20', 'cruller20@examiner.com', 'jTdw5t9', 'https://comcast.net', 'Ciqzdmxefa mwfersptn kvtfj !', 72);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (73, 'O''Cassidy', 'Faîtes', 'mocassidy21', 'eocassidy21@ftc.gov', 'jIoXb3OJ', 'http://myspace.com', 'Sqzsdywuof szpneyads yiuco !', 73);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (74, 'Bodemeaid', 'Médiamass', 'fbodemeaid22', 'lbodemeaid22@slideshare.net', '4YE7mC', 'http://privacy.gov.au', 'Drgzauezbo ogkuchbxl erzex !', 74);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (75, 'Secrett', 'Léa', 'bsecrett23', 'msecrett23@rambler.ru', 'aJoxiQdqqm8j', 'http://europa.eu', 'Xrbeurhpkf kkzvifkpd qwznw !', 75);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (76, 'Gapper', 'Léane', 'hgapper24', 'fgapper24@github.io', 'hIhUZoJOJkF', 'https://theatlantic.com', 'Zkrgefwrcd ygsgbzhcg wrvab !', 76);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (77, 'Whimper', 'Ráo', 'kwhimper25', 'mwhimper25@mapquest.com', 'jHyWA2ilj', 'http://weather.com', 'Jlsyhgnfbn foyubngzo uaqbs !', 77);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (78, 'Pruckner', 'Solène', 'dpruckner26', 'epruckner26@de.vu', '1mIoyBvak6', 'https://ft.com', 'Yhloyisyna wpwbsvilk xtksm !', 78);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (79, 'Dossit', 'Eléonore', 'mdossit27', 'sdossit27@yahoo.co.jp', 'bZwmxUWB', 'https://hostgator.com', 'Elvwttkoic ncqhxraao nzopq !', 79);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (80, 'Skippings', 'Frédérique', 'hskippings28', 'sskippings28@topsy.com', 'YPny0fYdLSj', 'http://eventbrite.com', 'Dbfrwtylbb oiqjydvbr qtiyz !', 80);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (81, 'Marchent', 'Mélina', 'lmarchent29', 'nmarchent29@pagesperso-orange.fr', 'mwmzoOrD8t', 'https://hud.gov', 'Ebsweoulgx zrgszazxn tfsaf !', 81);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (82, 'Faull', 'Léonore', 'rfaull2a', 'efaull2a@businesswire.com', 'gxfLzWdmV0v', 'https://nyu.edu', 'Mkkvzxgntg lqjxofddi jpbcp !', 82);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (83, 'Whartonby', 'Loïc', 'swhartonby2b', 'cwhartonby2b@jalbum.net', 'OPVrYO', 'http://si.edu', 'Ihcmogvuyy lypdfomnb khrji !', 83);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (84, 'Toffolo', 'Irène', 'mtoffolo2c', 'atoffolo2c@goo.gl', 'eYQUFLI', 'https://netlog.com', 'Dmfwdtwxbg fhdwgbicp qdlot !', 84);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (85, 'Beelby', 'Josée', 'rbeelby2d', 'nbeelby2d@state.tx.us', 'x6FwsN7boss', 'http://nba.com', 'Uvlexblqfj qwhjmaznu uonwi !', 85);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (86, 'Pauletti', 'Mylène', 'rpauletti2e', 'cpauletti2e@purevolume.com', 'W0jzX17PeqWZ', 'https://wikipedia.org', 'Enefntvfti ghbeetpqm ytnji !', 86);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (87, 'Scedall', 'Béatrice', 'cscedall2f', 'tscedall2f@npr.org', 'ZZzXd1EJJ', 'http://pbs.org', 'Abrfnnepin rfvetgsiq juhna !', 87);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (88, 'O''Scully', 'Mélina', 'boscully2g', 'doscully2g@nih.gov', 'RZreXaUt', 'https://dagondesign.com', 'Nsnxrevthy swbrvjbsb zykkf !', 88);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (89, 'Grain', 'Faîtes', 'hgrain2h', 'mgrain2h@ustream.tv', 'qIGP7Gvtb4Q', 'https://jalbum.net', 'Qumqiumraz jtxotvpfh edkux !', 89);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (90, 'Vanstone', 'Andréanne', 'jvanstone2i', 'mvanstone2i@unesco.org', 'FShK2kwM', 'https://prlog.org', 'Vyczpmogqq pwdxrhunn rftgq !', 90);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (91, 'Esmond', 'Torbjörn', 'hesmond2j', 'resmond2j@pinterest.com', 'BTeL9p', 'http://nps.gov', 'Vaegrjdqel xobzlzcyu grvmd !', 91);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (92, 'Brodley', 'Yénora', 'lbrodley2k', 'xbrodley2k@flickr.com', 'aUNGaoBeF3', 'https://deviantart.com', 'Mksgyglppz opovhogcs preoh !', 92);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (93, 'Petr', 'Amélie', 'mpetr2l', 'apetr2l@ucsd.edu', '1Rir0V', 'http://360.cn', 'Btaahwfabk jjjebphqw ekntq !', 93);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (94, 'Fores', 'Maéna', 'kfores2m', 'mfores2m@vk.com', 'DOstVqwTaC', 'https://nymag.com', 'Unrotsokeg qhuirihxo legfi !', 94);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (95, 'Matfield', 'Lorène', 'tmatfield2n', 'amatfield2n@jiathis.com', 'anpKXR', 'https://opera.com', 'Zxjgzvreip qrqdvikst smzhg !', 95);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (96, 'Francecione', 'Yáo', 'dfrancecione2o', 'gfrancecione2o@163.com', 'XRvOQEtuk', 'http://bbb.org', 'Vgafmbumyf byfahlisy vxivo !', 96);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (97, 'Kennicott', 'Daphnée', 'dkennicott2p', 'kkennicott2p@printfriendly.com', 'Jrlq1Ds', 'https://cmu.edu', 'Lwpvpwbkrl qpcblznoz ewjyi !', 97);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (98, 'Pixton', 'Sòng', 'hpixton2q', 'gpixton2q@slashdot.org', 'y1wsjmoX', 'https://sun.com', 'Onkiheyhoy bpkdtzspy hyqtc !', 98);
insert into Utilisateurs (id, nom, prénom, pseudonyme, email, mot_de_passe, avatar, bio, follow_id) values (99, 'Bosley', 'Aurélie', 'rbosley2r', 'pbosley2r@ocn.ne.jp', 'WCRqjIPnJo', 'http://deliciousdays.com', 'Fyggtnwjmt vdvwkjifo xttao !', 99);

insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (0, 'http://engadget.com', 'Nbvojaj jx ujmmlfy !', 88.27, -56.7, 0, 0, 0);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (1, 'http://example.com', 'Tkznmgo ev gzxucjg !', 37.34, -99.01, 1, 1, 1);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (2, 'https://flickr.com', 'Wsrzhcp ro olvajfv !', -39.85, -148.98, 2, 2, 2);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (3, 'https://gnu.org', 'Utwyinn wt ojwgdbg !', 4.88, -91.38, 3, 3, 3);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (4, 'https://cbc.ca', 'Xapvkxj su ntwolmz !', -19.89, -161.55, 4, 4, 4);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (5, 'https://plala.or.jp', 'Nynhosc vf fappxpu !', 0.08, -118.41, 5, 5, 5);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (6, 'http://yelp.com', 'Qqmyvwj ys bmolosy !', 33.53, 65.86, 6, 6, 6);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (7, 'http://chicagotribune.com', 'Yqqurwp bk bpvvput !', 10.58, 139.78, 7, 7, 7);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (8, 'https://livejournal.com', 'Shjttnv bb wkmyjef !', -82.55, 16.46, 8, 8, 8);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (9, 'http://virginia.edu', 'Uitzbqd ij zoiiybq !', -52.18, 168.01, 9, 9, 9);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (10, 'http://discovery.com', 'Biekkaq vu vnwidfi !', -44.22, 0.21, 10, 10, 10);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (11, 'http://yahoo.com', 'Hdaalup fe pfzsice !', -80.0, -108.11, 11, 11, 11);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (12, 'http://qq.com', 'Gawwzmu de lyevqas !', -54.51, 143.16, 12, 12, 12);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (13, 'https://nymag.com', 'Ymhlige yo dmhtyor !', 38.04, -96.72, 13, 13, 13);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (14, 'https://about.me', 'Wspubme qc uclsbow !', -2.1, 45.55, 14, 14, 14);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (15, 'https://ted.com', 'Jutmtzw es ppavzxe !', 62.85, 69.48, 15, 15, 15);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (16, 'https://nps.gov', 'Bzqijzj pf zgqdbcq !', 44.65, 34.14, 16, 16, 16);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (17, 'http://kickstarter.com', 'Lelrpod zb gfzytno !', 1.75, -111.14, 17, 17, 17);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (18, 'https://themeforest.net', 'Syyhlsy td mtoyqxb !', 39.15, -152.93, 18, 18, 18);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (19, 'http://rakuten.co.jp', 'Nsswijl nh vnhdjuw !', -63.52, 77.15, 19, 19, 19);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (20, 'http://dmoz.org', 'Mycblfh hb pcoacvg !', -33.7, -167.57, 20, 20, 20);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (21, 'https://slashdot.org', 'Cnyrmew ei kumtcge !', 4.39, 117.72, 21, 21, 21);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (22, 'http://webeden.co.uk', 'Jcohlhb ff higajpy !', -3.26, -61.31, 22, 22, 22);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (23, 'http://biglobe.ne.jp', 'Fqiwepe gc vmgiyxv !', -84.36, 58.99, 23, 23, 23);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (24, 'http://arizona.edu', 'Upgkuhn lu wkimbtw !', -44.09, 90.06, 24, 24, 24);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (25, 'https://issuu.com', 'Cukvzch ho bbbewff !', -56.82, 78.03, 25, 25, 25);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (26, 'http://utexas.edu', 'Klsdyvs bw dsdmxak !', 83.93, -159.04, 26, 26, 26);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (27, 'https://google.fr', 'Syajjff kw bycqzxx !', 67.05, 19.96, 27, 27, 27);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (28, 'http://slate.com', 'Dnyzfln qj utvwghz !', -89.0, 105.83, 28, 28, 28);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (29, 'http://reverbnation.com', 'Aeuwolz tb mbirlkq !', -65.67, 113.15, 29, 29, 29);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (30, 'http://opensource.org', 'Pblirqk eh rsfmdkc !', 45.18, 4.27, 30, 30, 30);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (31, 'http://ask.com', 'Zzhizqt tk kjiacte !', -65.83, -173.12, 31, 31, 31);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (32, 'http://multiply.com', 'Whykkmb un orxayyl !', 44.65, 35.14, 32, 32, 32);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (33, 'https://t-online.de', 'Iegiyat ry oxxlvhw !', -33.56, -37.47, 33, 33, 33);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (34, 'http://squidoo.com', 'Gvsfdmv ze vpseobd !', 37.58, 64.33, 34, 34, 34);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (35, 'http://yahoo.com', 'Ejnzwae aq dpkqmdd !', -85.76, 40.03, 35, 35, 35);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (36, 'http://chron.com', 'Sckethe qp cntxwup !', -70.97, 38.73, 36, 36, 36);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (37, 'https://dyndns.org', 'Qkpkrjs qp rxrwyqc !', -71.65, -121.42, 37, 37, 37);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (38, 'https://facebook.com', 'Csmmpph pl mprggrn !', 72.29, 11.85, 38, 38, 38);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (39, 'https://businessweek.com', 'Xbsxdoc rx iwdhzhy !', 24.97, 14.89, 39, 39, 39);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (40, 'https://diigo.com', 'Stjlobq et ektjgyy !', 57.63, -98.82, 40, 40, 40);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (41, 'http://nytimes.com', 'Xyxltef ve hvewoqp !', -76.32, -33.86, 41, 41, 41);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (42, 'https://newsvine.com', 'Nwsinrw sv pfbbqim !', -80.74, 16.3, 42, 42, 42);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (43, 'https://flickr.com', 'Wmoskrj bn lifybju !', 32.15, 165.5, 43, 43, 43);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (44, 'https://smugmug.com', 'Rcpxird ce icstmof !', 32.91, 52.67, 44, 44, 44);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (45, 'http://ucoz.com', 'Pbbehcj do fxnrrtn !', 12.74, -29.76, 45, 45, 45);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (46, 'https://altervista.org', 'Eltxwaf av yppzekf !', -32.85, 0.05, 46, 46, 46);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (47, 'https://constantcontact.com', 'Easmnke qg wifytvv !', -36.22, -176.46, 47, 47, 47);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (48, 'https://amazon.com', 'Ruolrps co pzvmbyv !', 55.53, 132.25, 48, 48, 48);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (49, 'http://seesaa.net', 'Hiizzyu tv oyanutr !', 81.24, 73.54, 49, 49, 49);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (50, 'https://wikimedia.org', 'Nfjpltr yi xumyemf !', 2.2, -90.02, 50, 50, 50);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (51, 'http://blog.com', 'Bqdfcwj wb hzghhrd !', 88.15, -22.55, 51, 51, 51);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (52, 'http://gizmodo.com', 'Fbdcnbe cf euvddug !', 59.33, 62.51, 52, 52, 52);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (53, 'https://redcross.org', 'Wkmcuqb qv xsnzkou !', -33.19, 144.61, 53, 53, 53);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (54, 'https://nih.gov', 'Lahvbwp bt gstxtdu !', -63.47, -11.55, 54, 54, 54);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (55, 'http://ox.ac.uk', 'Fpnayxy fk zrbdsth !', 16.3, 28.35, 55, 55, 55);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (56, 'https://mail.ru', 'Ucfjykx wn xntfqwi !', 20.59, 176.77, 56, 56, 56);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (57, 'http://hao123.com', 'Cwyksek qa nkglqan !', 82.58, -65.8, 57, 57, 57);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (58, 'http://admin.ch', 'Oykazde lt mojlgir !', 25.53, -71.0, 58, 58, 58);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (59, 'http://ning.com', 'Ovheuis yv jfxpqpr !', -46.73, 13.34, 59, 59, 59);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (60, 'https://twitpic.com', 'Sbmuipd pa wmrgdxl !', -58.66, 5.75, 60, 60, 60);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (61, 'https://bigcartel.com', 'Hjqymov lw stukdwf !', 41.64, -134.74, 61, 61, 61);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (62, 'https://cbslocal.com', 'Jfusfwo lq igtywic !', 38.39, 54.26, 62, 62, 62);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (63, 'http://naver.com', 'Slaeuxz cc kwyrywd !', 53.78, 172.42, 63, 63, 63);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (64, 'https://diigo.com', 'Vpfsicq sx txowkcz !', -55.68, -149.41, 64, 64, 64);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (65, 'http://cbsnews.com', 'Jwlpdxs ua iqasvew !', -6.76, -99.3, 65, 65, 65);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (66, 'https://bing.com', 'Peorfqn jg qvggark !', 62.73, 107.98, 66, 66, 66);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (67, 'https://ehow.com', 'Forxdes my iefqaul !', -64.3, -23.88, 67, 67, 67);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (68, 'https://stanford.edu', 'Nlsetkm zy fepbmvm !', 64.29, -137.56, 68, 68, 68);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (69, 'https://technorati.com', 'Zhhihvm cz tuscqie !', 65.15, -18.14, 69, 69, 69);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (70, 'http://woothemes.com', 'Ovhauyr wn jylyxuu !', 37.24, 20.02, 70, 70, 70);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (71, 'https://bloglovin.com', 'Rlvqqis ch bbqbarv !', -82.84, 16.98, 71, 71, 71);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (72, 'http://ameblo.jp', 'Ldkxhau et mgbwxkp !', 6.5, 149.31, 72, 72, 72);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (73, 'https://cnet.com', 'Qzkyvfe nj dhrkdlb !', 77.52, -107.83, 73, 73, 73);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (74, 'https://ow.ly', 'Rfzerdf np ruakuki !', 43.43, 130.6, 74, 74, 74);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (75, 'https://godaddy.com', 'Nasooas ng ugbevzl !', 87.39, 138.0, 75, 75, 75);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (76, 'https://weibo.com', 'Ylumwqx af lbhgtyv !', -86.76, 113.71, 76, 76, 76);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (77, 'https://slashdot.org', 'Iosicop xm hnnbbbs !', -11.95, -106.7, 77, 77, 77);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (78, 'https://zimbio.com', 'Vogcgqv io wlccnlf !', 35.73, 134.95, 78, 78, 78);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (79, 'https://princeton.edu', 'Lwzyvxg qx krtjosc !', 29.68, -162.54, 79, 79, 79);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (80, 'http://drupal.org', 'Zexfxnl iq uvwfuzy !', 82.77, 142.84, 80, 80, 80);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (81, 'http://live.com', 'Mvnmocu gb xavijvd !', 76.9, -90.8, 81, 81, 81);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (82, 'https://youku.com', 'Kblpwvq yv erskfhw !', 71.08, 178.06, 82, 82, 82);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (83, 'https://delicious.com', 'Nrmnmms ln nfsqoyz !', -55.73, 14.78, 83, 83, 83);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (84, 'http://telegraph.co.uk', 'Bcqohbb nt ajbsfhw !', 40.16, 26.73, 84, 84, 84);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (85, 'http://istockphoto.com', 'Whukyzg id nptitxt !', 80.02, -165.25, 85, 85, 85);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (86, 'http://merriam-webster.com', 'Cpramep vf eigohgk !', 9.66, -43.43, 86, 86, 86);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (87, 'http://mapquest.com', 'Bhozeno nn rxqjbjv !', 51.34, 59.66, 87, 87, 87);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (88, 'http://amazon.de', 'Ghkorht lp agwrokc !', -71.18, -45.74, 88, 88, 88);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (89, 'http://mozilla.com', 'Vfwdwbk mu qmblkrl !', -52.87, 179.63, 89, 89, 89);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (90, 'http://com.com', 'Tflawqc jl edbqexu !', 81.16, -158.27, 90, 90, 90);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (91, 'http://jimdo.com', 'Oozjepb ex opmyuir !', 29.61, -17.48, 91, 91, 91);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (92, 'http://example.com', 'Onmfnjs le qgwruxw !', 86.11, 170.7, 92, 92, 92);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (93, 'http://nytimes.com', 'Dbakamc pb wuztnng !', 78.83, 154.31, 93, 93, 93);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (94, 'http://cloudflare.com', 'Jfzxiyi ie clexlos !', 74.43, 108.36, 94, 94, 94);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (95, 'https://e-recht24.de', 'Ierdvxh xa zxeqzgx !', 29.32, 61.13, 95, 95, 95);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (96, 'http://etsy.com', 'Poahrbh ex cnwjino !', 60.22, 108.92, 96, 96, 96);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (97, 'https://w3.org', 'Zhsdqwp dg tfhqbkk !', -52.19, -153.94, 97, 97, 97);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (98, 'https://bravesites.com', 'Ftgxqnw wa btqdiou !', -31.47, -117.69, 98, 98, 98);
insert into Photos (id, url, légende, latitude, longitude, utilisateur_id, commentaire_id, like_id) values (99, 'http://dedecms.com', 'Jvcbdtc fp ebuvdgd !', 65.17, -63.11, 99, 99, 99);

