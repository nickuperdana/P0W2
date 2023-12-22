BEGIN;

CREATE TABLE crunchbase_companies_clean_data (
    permalink VARCHAR(50),
    name VARCHAR(50),
    homepage_url VARCHAR(50),
    category_code VARCHAR(50),
    funding_total_usd BIGINT,
    status VARCHAR(20),
    country_code VARCHAR(5),
    state_code VARCHAR(5),
    region VARCHAR(50),
    city VARCHAR(50),
    funding_rounds INT,
    founded_at VARCHAR(20),
    founded_at_clean VARCHAR(20),
    id SERIAL PRIMARY KEY
);

INSERT INTO crunchbase_companies_clean_data (permalink,name,homepage_url,category_code,funding_total_usd,status,country_code,state_code,region,city,funding_rounds,founded_at,founded_at_clean) VALUES
     ('/company/8868','8868','http://www.8868.cn',NULL,NULL,'operating',NULL,NULL,'unknown',NULL,1,NULL,NULL),
     ('/company/21e6','2.10E+07',NULL,NULL,5050000,'operating','USA','CA','SF Bay','San Francisco',1,'1/1/13','2013-01-01'),
     ('/company/club-domains','.Club Domains','http://dotclub.com','software',7000000,'operating','USA','FL','Fort Lauderdale','Oakland Park',1,'10/10/11','2011-10-10'),
     ('/company/fox-networks','.Fox Networks','http://www.dotfox.com','advertising',4912394,'closed','ARG',NULL,'Buenos Aires','Buenos Aires',1,NULL,NULL),
     ('/company/a-list-games','[a]list games','http://www.alistgames.com','games_video',9300000,'operating',NULL,NULL,'unknown',NULL,1,NULL,NULL),
     ('/company/pay-mobile-checkout','@Pay','http://atpay.com','mobile',3500000,'operating','USA','NM','Albuquerque','Albuquerque',1,'5/1/11','2011-05-01'),
     ('/company/tv-communications','&TV Communications','http://enjoyandtv.com','games_video',4000000,'operating','USA','CA','Los Angeles','Los Angeles',2,NULL,NULL),
     ('/company/waywire','#waywire','http://www.waywire.com','news',1750000,'acquired','USA','NY','New York','New York',1,'6/1/12','2012-06-01'),
     ('/company/0-6-com','0-6.com','http://www.0-6.com','web',2000000,'operating',NULL,NULL,'unknown',NULL,1,'1/1/07','2007-01-01'),
     ('/company/0xdata','0xdata','http://www.0xdata.com','analytics',1700000,'operating','USA','CA','SF Bay','Mountain View',1,'1/1/11','2011-01-01');
INSERT INTO crunchbase_companies_clean_data (permalink,name,homepage_url,category_code,funding_total_usd,status,country_code,state_code,region,city,funding_rounds,founded_at,founded_at_clean) VALUES
     ('/company/1-800-doctors','1-800-DOCTORS','http://1800doctors.com','health',1750000,'operating','USA','NJ','Iselin','Iselin',1,'1/1/84','1984-01-01'),
     ('/company/10-20-media','10-20 Media','http://www.10-20media.com','ecommerce',1550000,'operating','USA','MD','Washington DC','Woodbine',3,'1/1/01','2001-01-01'),
     ('/company/1000jobboersen-de','1000jobboersen.de','http://www.1000jobboersen.de','web',NULL,'operating','DEU',NULL,'Germany - Other',NULL,1,NULL,NULL),
     ('/company/1000memories','1000memories','http://1000memories.com','web',2535000,'acquired','USA','CA','SF Bay','San Francisco',2,'7/1/10','2010-07-01'),
     ('/company/1000museums-com','1000museums.com','http://www.1000museums.com','web',4196711,'operating','USA','WA','Seattle','Bellevue',3,'1/1/08','2008-01-01'),
     ('/company/1001-menus','1001 Menus','http://1001menus.com','web',1736910,'operating','FRA',NULL,'Paris','Paris',1,'11/20/10','2010-11-20'),
     ('/company/100du-tv','100du.tv','http://www.100du.com','hospitality',3000000,'operating',NULL,NULL,'unknown',NULL,2,NULL,NULL),
     ('/company/100e-com','100e.com','http://www.100e.com','education',3000000,'operating','CHN',NULL,'Beijing','Beijing',1,NULL,NULL),
     ('/company/100plus','100Plus','http://www.100plus.com','analytics',1250000,'acquired','USA','CA','SF Bay','San Francisco',2,'9/16/11','2011-09-16'),
     ('/company/1010data','1010data','http://www.1010data.com','software',35000000,'operating','USA','NY','New York','New York',1,'1/1/00','2000-01-01');
INSERT INTO crunchbase_companies_clean_data (permalink,name,homepage_url,category_code,funding_total_usd,status,country_code,state_code,region,city,funding_rounds,founded_at,founded_at_clean) VALUES
     ('/company/10bestthings','10BestThings','http://10bestthings.com','web',50000,'closed','USA','OH','Cleveland','Cleveland',1,'4/1/09','2009-04-01'),
     ('/company/10x-technologies','10X Technologies','http://10xtechnologies.com','biotech',3000000,'operating','USA','CA','SF Bay','Oakland',1,'1/1/12','2012-01-01'),
     ('/company/10x10-room','10X10 Room','http://10x10room.com','software',77500,'operating','USA','MA','Boston','Lexington',1,'1/1/10','2010-01-01'),
     ('/company/121cast','121cast','http://www.121cast.com','mobile',270000,'operating','AUS',NULL,'Melbourne','Melbourne',2,'2/1/12','2012-02-01'),
     ('/company/1234enter','1234ENTER','http://www.1234enter.com.br','ecommerce',650267,'operating','BRA',NULL,'Brazil - Other',NULL,2,'1/1/12','2012-01-01'),
     ('/company/123contactform','123ContactForm','http://www.123contactform.com','web',NULL,'operating','ROM',NULL,'Timisoara','Timisoara',1,'1/1/08','2008-01-01'),
     ('/company/12society','12Society','http://www.12Society.com','ecommerce',NULL,'acquired','USA','CA','Los Angeles','West Hollywood',1,'1/1/12','2012-01-01'),
     ('/company/1366-technologies','1366 Technologies','http://www.1366tech.com','manufacturing',66450000,'operating','USA','MA','Boston','Bedford',8,'1/1/07','2007-01-01'),
     ('/company/139shop','139shop','http://www.139shop.com',NULL,NULL,'operating',NULL,NULL,'unknown',NULL,1,NULL,NULL),
     ('/company/13th-lab','13th Lab','http://13thlab.com','mobile',700000,'operating','SWE',NULL,'Stockholm','Stockholm',1,'1/1/10','2010-01-01');
INSERT INTO crunchbase_companies_clean_data (permalink,name,homepage_url,category_code,funding_total_usd,status,country_code,state_code,region,city,funding_rounds,founded_at,founded_at_clean) VALUES
     ('/company/140-proof','140 Proof','http://140proof.com','advertising',5500000,'operating','USA','CA','SF Bay','San Francisco',2,'1/11/10','2010-01-11'),
     ('/company/140fire','140Fire','http://140fire.com','advertising',500000,'operating','USA','CA','Los Angeles','Santa Monica',1,'1/1/10','2010-01-01'),
     ('/company/15five','15Five','http://15five.com','software',1200000,'operating','USA','CA','SF Bay','San Francisco',2,'5/1/11','2011-05-01'),
     ('/company/15minutesnow','15MinutesNOW','http://15minutesnow.com','games_video',200000,'operating',NULL,NULL,'unknown',NULL,1,'4/19/11','2011-04-19'),
     ('/company/169-st','169 ST.','http://www.junebugreview.com','games_video',50000,'closed','USA','FL','Orlando','Lake Mary',1,'5/15/09','2009-05-15'),
     ('/company/170-systems','170 Systems','http://www.170systems.com','software',14000000,'acquired','USA','MA','Boston','Bedford',1,'1/1/90','1990-01-01'),
     ('/company/1bib','1bib','http://www.1bib.com','web',NULL,'closed','CHN',NULL,'China - Other',NULL,1,'1/1/06','2006-01-01'),
     ('/company/1c-company','1C Company','http://1c.ru/eng','software',200000000,'operating','RUS',NULL,'Moscow','Moscow',1,'1/1/91','1991-01-01'),
     ('/company/1calendar','1calendar','http://1calendar.com','education',40000,'operating','DNK',NULL,'DNK','Copenhagen',1,'1/19/09','2009-01-19'),
     ('/company/1cast','1Cast','http://www.1cast.com','news',NULL,'closed','USA','WA','Seattle','Kirkland',1,'6/1/06','2006-06-01');
INSERT INTO crunchbase_companies_clean_data (permalink,name,homepage_url,category_code,funding_total_usd,status,country_code,state_code,region,city,funding_rounds,founded_at,founded_at_clean) VALUES
     ('/company/1click','1CLICK','http://1click.io','mobile',NULL,'operating','IND',NULL,'Bangalore','Bangalore',1,'11/1/12','2012-11-01'),
     ('/company/1daylater','1DayLater','http://1daylater.com','web',43812,'operating',NULL,NULL,'unknown',NULL,2,'8/26/09','2009-08-26'),
     ('/company/1daymakeover','1DayMakeover','http://www.1daymakeover.com','ecommerce',50000,'closed','USA','CA','Los Angeles','Santa Ana',1,'6/30/08','2008-06-30'),
     ('/company/1energy-systems','1Energy Systems','http://1energysystems.com','software',1450000,'operating','USA','WA','Seattle','Seattle',1,'1/1/10','2010-01-01'),
     ('/company/1eq','1eq','http://www.1eq.me','health',1300000,'operating',NULL,NULL,'unknown',NULL,2,'1/1/12','2012-01-01'),
     ('/company/1life-healthcare','1Life Healthcare','http://www.1life.com',NULL,30000000,'operating','USA','CA','SF Bay','San Francisco',1,'1/1/02','2002-01-01'),
     ('/company/1o1media','1o1Media',NULL,NULL,NULL,'operating',NULL,NULL,'unknown',NULL,1,NULL,NULL),
     ('/company/1ring','1Ring','http://www.1ring.com','web',NULL,'operating',NULL,NULL,'unknown',NULL,1,'5/1/09','2009-05-01'),
     ('/company/1sdk','1SDK','http://www.1sdk.com','mobile',19299,'operating','DEU',NULL,'Berlin','Berlin',1,'9/1/12','2012-09-01'),
     ('/company/1stdibs','1stdibs','http://www.1stdibs.com','ecommerce',57000000,'operating','USA','NY','New York','New York',4,'1/1/01','2001-01-01');
INSERT INTO crunchbase_companies_clean_data (permalink,name,homepage_url,category_code,funding_total_usd,status,country_code,state_code,region,city,funding_rounds,founded_at,founded_at_clean) VALUES
     ('/company/1stgig-com','1stGig.com','http://www.1stgig.com','ecommerce',750000,'operating','USA','WI','TBD','Saratoga Springs',1,'8/1/09','2009-08-01'),
     ('/company/1world-online','1World Online','http://1worldonline.com','enterprise',1500000,'operating','USA','CA','SF Bay','San Jose',2,'12/1/11','2011-12-01'),
     ('/company/2-minutes','2 Minutes','http://www.2minutes.fr','games_video',1660000,'operating','FRA',NULL,'Paris','Paris',1,'10/1/00','2000-10-01'),
     ('/company/20-20-mobile','20:20 Mobile','http://www.2020mobile.com','mobile',29750000,'operating','ARE',NULL,'Crewe','Crewe, Cheshire',1,'9/1/06','2006-09-01'),
     ('/company/2080-media','2080 Media',NULL,'news',41000000,'operating','USA','GA','Atlanta','Atlanta',5,'1/1/08','2008-01-01'),
     ('/company/20x200','20x200','http://www.20x200.com','ecommerce',2800000,'operating','USA','NY','New York','New York',2,'9/1/07','2007-09-01'),
     ('/company/21cake-food-co','21Cake Food Co.','http://www.21cake.com','hospitality',1460000,'operating','CHN',NULL,'China - Other',NULL,1,'1/1/04','2004-01-01'),
     ('/company/21grams','21GRAMS','http://www.21grams.se','software',2580000,'operating','SWE',NULL,'Stockholm','STOCKHOLM',1,NULL,NULL),
     ('/company/21vianet','21viaNet','http://www.ch.21vianet.com',NULL,100000000,'ipo','CHN',NULL,'China - Other',NULL,3,NULL,NULL),
     ('/company/22nd-century-group','22nd Century Group','http://www.xxiicentury.com','biotech',4984750,'ipo','USA','NY','Clarence','Clarence',4,'1/1/98','1998-01-01');
INSERT INTO crunchbase_companies_clean_data (permalink,name,homepage_url,category_code,funding_total_usd,status,country_code,state_code,region,city,funding_rounds,founded_at,founded_at_clean) VALUES
     ('/company/2345-com','2345.com','http://www.2345.com',NULL,11000000,'operating',NULL,NULL,'unknown',NULL,2,NULL,NULL),
     ('/company/23andme','23andMe','http://23andme.com','biotech',188328971,'operating','USA','CA','SF Bay','Mountain View',7,'4/1/06','2006-04-01'),
     ('/company/23press','23press','http://www.23press.com','software',50000,'operating','CAN',NULL,'Toronto','Toronto',1,'6/1/11','2011-06-01'),
     ('/company/24-media-network','24 Media Network','http://nyheter24.se','news',1209702,'operating','SWE',NULL,'Stockholm','Stockholm',2,NULL,NULL),
     ('/company/24-7-card','24/7 Card','http://www.247card.com','finance',3452941,'closed','USA','CA','Los Angeles','Los Angeles',3,NULL,NULL),
     ('/company/247-techies','247 Techies','http://www.247techies.com','hardware',600000,'operating','USA','NY','New York','New York',1,NULL,NULL),
     ('/company/24pagebooks','24PageBooks','http://24pagebooks.com','software',50000,'closed','USA','NY','Rochester','Rochester',2,NULL,NULL),
     ('/company/247-learning-private','24x7 Learning','http://www.24x7learning.com','education',4000000,'operating','IND',NULL,'Bangalore','Bangalore',1,'1/1/01','2001-01-01'),
     ('/company/250ok','250ok','http://www.250ok.com','software',200000,'operating','USA','IN','Indianapolis','Indianapolis',1,'1/1/12','2012-01-01'),
     ('/company/25eight','25eight','http://25eightsoftware.com','software',25000,'closed',NULL,NULL,'unknown',NULL,1,NULL,NULL);
INSERT INTO crunchbase_companies_clean_data (permalink,name,homepage_url,category_code,funding_total_usd,status,country_code,state_code,region,city,funding_rounds,founded_at,founded_at_clean) VALUES
     ('/company/27-perry','27 Perry','http://www.27perry.com','ecommerce',118000,'closed','USA','CO','Denver','Boulder',1,'7/25/12','2012-07-25'),
     ('/company/280-north','280 North','http://280north.com','software',250000,'acquired',NULL,NULL,'unknown',NULL,2,NULL,NULL),
     ('/company/28msec','28msec','http://www.28msec.com','software',5844811,'operating','USA','CA','SF Bay','Palo Alto',1,'1/1/08','2008-01-01'),
     ('/company/2c2p','2C2P','http://www.2c2p.com','software',3000000,'operating','SGP',NULL,'Singapore','Singapore',2,'1/1/08','2008-01-01'),
     ('/company/2can','2can','http://2can.ru','mobile',2000000,'operating','RUS',NULL,'Moscow','Moscow',1,'4/12/12','2012-04-12'),
     ('/company/2catalyze','2Catalyze',NULL,'software',6785876,'operating','CAN',NULL,'Toronto','Toronto',1,'1/1/08','2008-01-01'),
     ('/company/2code-online','2CODE Online','http://www.2codeonline.com','software',NULL,'operating',NULL,NULL,'unknown',NULL,1,'10/1/08','2008-10-01'),
     ('/company/2crisk','2CRisk','http://www.2crisk.com.au','software',383000,'operating','AUS',NULL,'SF Bay','Brisbane',2,'7/1/10','2010-07-01'),
     ('/company/2d2c','2d2c','http://www.2d2c.com','hardware',2500000,'operating','USA','IL','Chicago','Lincolnshire',2,NULL,NULL),
     ('/company/in-and-out-cash-management-software','2DOLife.com','http://2DOLife.com','software',250000,'operating','USA','CA','SF Bay','San Pablo',1,'12/1/11','2011-12-01');
INSERT INTO crunchbase_companies_clean_data (permalink,name,homepage_url,category_code,funding_total_usd,status,country_code,state_code,region,city,funding_rounds,founded_at,founded_at_clean) VALUES
     ('/company/2duche','2Duche','http://www.2duche.com',NULL,NULL,'operating',NULL,NULL,'unknown',NULL,2,NULL,NULL),
     ('/company/2go-software-solutions','2GO Mobile Solutions','http://www.2gosoftware.com','software',275000,'operating','USA','TX','Dallas','Plano',1,'1/1/08','2008-01-01'),
     ('/company/2houses','2houses','http://www.2houses.com','web',856845,'operating','BEL',NULL,'Belgium - Other',NULL,1,'5/1/11','2011-05-01'),
     ('/company/2ndnature-2','2NDNATURE','http://www.2ndnaturellc.com',NULL,20000,'operating','USA','CA','SF Bay','Santa Cruz',1,'1/1/04','2004-01-01'),
     ('/company/2sms','2sms','http://2sms.com','messaging',939000,'operating','USA','IL','Chicago','Schaumburg',1,NULL,NULL),
     ('/company/2u','2U','http://2U.com','education',95875000,'operating','USA','MD','Washington DC','Landover',6,'1/1/08','2008-01-01'),
     ('/company/2vancouver','2Vancouver','http://2vancouver.com','ecommerce',80000,'operating','CAN',NULL,'Vancouver','Vancouver',1,'1/25/12','2012-01-25'),
     ('/company/2web-technologies','2Web Technologies',NULL,'software',NULL,'acquired',NULL,NULL,'unknown',NULL,1,NULL,NULL),
     ('/company/2win-solutions','2Win-Solutions','http://www.TicTacDo.com','software',NULL,'closed','ISR',NULL,'Raanana','Raanana',1,NULL,NULL),
     ('/company/30-second-showcase','30 Second Showcase','http://www.30secondshowcase.com','software',25000,'operating','USA','NJ','New York','Clifton',1,'4/1/13','2013-04-01');
INSERT INTO crunchbase_companies_clean_data (permalink,name,homepage_url,category_code,funding_total_usd,status,country_code,state_code,region,city,funding_rounds,founded_at,founded_at_clean) VALUES
     ('/company/33across','33Across','http://www.33across.com','advertising',24134560,'operating','USA','NY','New York','New York',4,'9/1/07','2007-09-01'),
     ('/company/360cities','360Cities','http://360cities.net','web',NULL,'operating','CZE',NULL,'Prague','Prague',1,'1/1/07','2007-01-01'),
     ('/company/360guanxi','360Guanxi','http://www.360guanxi.com/index.html','news',5000000,'operating','CHN',NULL,'Shanghai','Shanghai',1,'1/1/00','2000-01-01'),
     ('/company/360imaging','360imaging','http://www.360imaging.com','biotech',5500000,'operating','USA','GA','Atlanta','Atlanta',2,'1/1/05','2005-01-01'),
     ('/company/360incentives-com','360incentives.com','http://www.360incentives.com','software',7650000,'operating','CAN',NULL,'Whitby','Whitby, ON',1,'1/1/08','2008-01-01'),
     ('/company/360learning','360Learning','http://360learning.com/fr','education',1543920,'operating','FRA',NULL,'Paris','Paris',1,'1/1/10','2010-01-01'),
     ('/company/gazaro','360pi','http://www.360pi.com','software',4100000,'operating','CAN',NULL,'Ottawa','Ottawa',2,'7/1/07','2007-07-01'),
     ('/company/365scores','365Scores','http://biz.365scores.com','mobile',1200000,'operating','USA',NULL,'United States - Other',NULL,1,NULL,NULL),
     ('/company/365webcall','365webcall','http://www.365webcall.com',NULL,NULL,'operating',NULL,NULL,'unknown',NULL,1,NULL,NULL),
     ('/company/39-health','39 Health','http://corp.39.net',NULL,3750000,'operating',NULL,NULL,'unknown',NULL,2,NULL,NULL);
	 
	 
	 CREATE TABLE dc_bikeshare_q1_2012 (
    id SERIAL PRIMARY KEY,
    duration VARCHAR(20),
    duration_seconds INT,
    start_time TIMESTAMP,
    start_station VARCHAR(70),
    start_terminal INT,
    end_time TIMESTAMP,
    end_station VARCHAR(70),
    end_terminal INT,
    bike_number VARCHAR(10),
    rider_type VARCHAR(20)
);


INSERT INTO dc_bikeshare_q1_2012 (duration,duration_seconds,start_time,start_station,start_terminal,end_time,end_station,end_terminal,bike_number,rider_type) VALUES
     ('0h 7m 55sec.',475,'2012-01-01 00:04:00','7th & R St NW / Shaw Library',31245,'2012-01-01 00:11:00','7th & T St NW',31109,'W01412','Registered'),
     ('0h 19m 22sec.',1162,'2012-01-01 00:10:00','Georgia & New Hampshire Ave NW',31400,'2012-01-01 00:29:00','16th & Harvard St NW',31103,'W00524','Casual'),
     ('0h 19m 5sec.',1145,'2012-01-01 00:10:00','Georgia & New Hampshire Ave NW',31400,'2012-01-01 00:29:00','16th & Harvard St NW',31103,'W00235','Registered'),
     ('0h 8m 5sec.',485,'2012-01-01 00:15:00','14th & V St NW',31101,'2012-01-01 00:23:00','Park Rd & Holmead Pl NW',31602,'W00864','Registered'),
     ('0h 7m 51sec.',471,'2012-01-01 00:15:00','11th & Kenyon St NW',31102,'2012-01-01 00:23:00','7th & T St NW',31109,'W00995','Registered'),
     ('0h 5m 58sec.',358,'2012-01-01 00:17:00','Court House Metro / Wilson Blvd & N Uhle St',31017,'2012-01-01 00:23:00','Lynn & 19th St North',31014,'W00466','Registered'),
     ('0h 29m 14sec.',1754,'2012-01-01 00:18:00','37th & O St NW / Georgetown University',31236,'2012-01-01 00:47:00','9th & Upshur St NW',31404,'W00525','Registered'),
     ('0h 4m 19sec.',259,'2012-01-01 00:22:00','14th & V St NW',31101,'2012-01-01 00:27:00','15th & P St NW',31201,'W00340','Registered'),
     ('0h 8m 36sec.',516,'2012-01-01 00:24:00','Lynn & 19th St North',31014,'2012-01-01 00:33:00','25th St & Pennsylvania Ave NW',31237,'W00466','Registered'),
     ('0h 15m 13sec.',913,'2012-01-01 00:25:00','14th & V St NW',31101,'2012-01-01 00:40:00','L''Enfant Plaza / 7th & C St SW',31218,'W00963','Registered');
INSERT INTO dc_bikeshare_q1_2012 (duration,duration_seconds,start_time,start_station,start_terminal,end_time,end_station,end_terminal,bike_number,rider_type) VALUES
     ('0h 18m 17sec.',1097,'2012-01-01 00:29:00','Tenleytown / Wisconsin Ave & Albemarle St NW',31303,'2012-01-01 00:48:00','Massachusetts Ave & Dupont Circle NW',31200,'W01398','Registered'),
     ('0h 8m 10sec.',490,'2012-01-01 00:30:00','New York Ave & 15th St NW',31222,'2012-01-01 00:38:00','21st & I St NW',31205,'W00042','Registered'),
     ('0h 17m 25sec.',1045,'2012-01-01 00:32:00','Metro Center / 12th & G St NW',31230,'2012-01-01 00:50:00','Massachusetts Ave & Dupont Circle NW',31200,'W00570','Registered'),
     ('0h 17m 15sec.',1035,'2012-01-01 00:32:00','Lamont & Mt Pleasant NW',31107,'2012-01-01 00:50:00','14th & Rhode Island Ave NW',31203,'W01463','Registered'),
     ('0h 17m 40sec.',1060,'2012-01-01 00:33:00','Lamont & Mt Pleasant NW',31107,'2012-01-01 00:50:00','14th & Rhode Island Ave NW',31203,'W00535','Registered'),
     ('0h 17m 19sec.',1039,'2012-01-01 00:33:00','Metro Center / 12th & G St NW',31230,'2012-01-01 00:50:00','Massachusetts Ave & Dupont Circle NW',31200,'W00494','Registered'),
     ('0h 7m 23sec.',443,'2012-01-01 00:33:00','25th St & Pennsylvania Ave NW',31237,'2012-01-01 00:41:00','New York Ave & 15th St NW',31222,'W00466','Registered'),
     ('0h 5m 16sec.',316,'2012-01-01 00:33:00','7th & T St NW',31109,'2012-01-01 00:39:00','Convention Center / 7th & M St NW',31223,'W00663','Registered'),
     ('0h 8m 26sec.',506,'2012-01-01 00:34:00','14th & Rhode Island Ave NW',31203,'2012-01-01 00:42:00','14th & V St NW',31101,'W01052','Registered'),
     ('0h 15m 56sec.',956,'2012-01-01 00:36:00','17th & Corcoran St NW',31214,'2012-01-01 00:52:00','17th & Corcoran St NW',31214,'W00174','Registered');
INSERT INTO dc_bikeshare_q1_2012 (duration,duration_seconds,start_time,start_station,start_terminal,end_time,end_station,end_terminal,bike_number,rider_type) VALUES
     ('0h 4m 4sec.',244,'2012-01-01 00:37:00','17th & Corcoran St NW',31214,'2012-01-01 00:41:00','Massachusetts Ave & Dupont Circle NW',31200,'W01298','Registered'),
     ('0h 5m 19sec.',319,'2012-01-01 00:39:00','McPherson Square - 14th & H St NW',31216,'2012-01-01 00:44:00','8th & H St NW',31228,'W01333','Registered'),
     ('0h 2m 37sec.',157,'2012-01-01 00:39:00','Potomac & Pennsylvania Ave SE',31606,'2012-01-01 00:42:00','Potomac & Pennsylvania Ave SE',31606,'W00697','Registered'),
     ('0h 8m 31sec.',511,'2012-01-01 00:41:00','4th & E St SW',31244,'2012-01-01 00:49:00','5th & F St NW',31620,'W00260','Registered'),
     ('0h 3m 19sec.',199,'2012-01-01 00:45:00','18th & M St NW',31221,'2012-01-01 00:48:00','19th St & Pennsylvania Ave NW',31100,'W00658','Registered'),
     ('0h 8m 19sec.',499,'2012-01-01 00:45:00','15th & P St NW',31201,'2012-01-01 00:54:00','16th & U St NW',31229,'W00996','Registered'),
     ('0h 7m 40sec.',460,'2012-01-01 00:46:00','15th & P St NW',31201,'2012-01-01 00:53:00','16th & U St NW',31229,'W00790','Registered'),
     ('0h 15m 31sec.',931,'2012-01-01 00:48:00','Massachusetts Ave & Dupont Circle NW',31200,'2012-01-01 01:04:00','4th St & Massachusetts Ave NW',31604,'W01213','Registered'),
     ('0h 6m 38sec.',398,'2012-01-01 00:49:00','Park Rd & Holmead Pl NW',31602,'2012-01-01 00:55:00','Columbia Rd & Belmont St NW',31113,'W00981','Registered'),
     ('0h 9m 18sec.',558,'2012-01-01 00:49:00','17th & Corcoran St NW',31214,'2012-01-01 00:59:00','16th & Harvard St NW',31103,'W01270','Registered');
INSERT INTO dc_bikeshare_q1_2012 (duration,duration_seconds,start_time,start_station,start_terminal,end_time,end_station,end_terminal,bike_number,rider_type) VALUES
     ('0h 10m 6sec.',606,'2012-01-01 00:49:00','17th & Corcoran St NW',31214,'2012-01-01 01:00:00','16th & Harvard St NW',31103,'W01465','Registered'),
     ('0h 2m 24sec.',144,'2012-01-01 00:50:00','19th St & Pennsylvania Ave NW',31100,'2012-01-01 00:53:00','21st & I St NW',31205,'W00658','Registered'),
     ('0h 14m 46sec.',886,'2012-01-01 00:52:00','Adams Mill & Columbia Rd NW',31104,'2012-01-01 01:07:00','C & O Canal & Wisconsin Ave NW',31225,'W00936','Casual'),
     ('0h 4m 1sec.',241,'2012-01-01 00:53:00','Eastern Market Metro / Pennsylvania Ave & 7th St SE',31613,'2012-01-01 00:57:00','14th & D St SE',31607,'W00007','Registered'),
     ('0h 7m 48sec.',468,'2012-01-01 00:53:00','Potomac & Pennsylvania Ave SE',31606,'2012-01-01 01:01:00','13th & D St NE',31622,'W00880','Registered'),
     ('0h 7m 40sec.',460,'2012-01-01 00:54:00','Potomac & Pennsylvania Ave SE',31606,'2012-01-01 01:01:00','13th & D St NE',31622,'W00232','Registered'),
     ('0h 7m 18sec.',438,'2012-01-01 00:54:00','Potomac & Pennsylvania Ave SE',31606,'2012-01-01 01:01:00','13th & D St NE',31622,'W00539','Registered'),
     ('0h 7m 24sec.',444,'2012-01-01 00:54:00','Potomac & Pennsylvania Ave SE',31606,'2012-01-01 01:01:00','13th & D St NE',31622,'W01108','Registered'),
     ('0h 3m 18sec.',198,'2012-01-01 00:55:00','L''Enfant Plaza / 7th & C St SW',31218,'2012-01-01 00:58:00','4th & E St SW',31244,'W00326','Casual'),
     ('0h 2m 59sec.',179,'2012-01-01 00:55:00','L''Enfant Plaza / 7th & C St SW',31218,'2012-01-01 00:58:00','4th & E St SW',31244,'W01111','Registered');
INSERT INTO dc_bikeshare_q1_2012 (duration,duration_seconds,start_time,start_station,start_terminal,end_time,end_station,end_terminal,bike_number,rider_type) VALUES
     ('0h 6m 18sec.',378,'2012-01-01 00:55:00','20th & Crystal Dr',31002,'2012-01-01 01:02:00','20th & Crystal Dr',31002,'W00333','Casual'),
     ('0h 5m 5sec.',305,'2012-01-01 00:56:00','20th & Crystal Dr',31002,'2012-01-01 01:01:00','20th & Crystal Dr',31002,'W01257','Casual'),
     ('0h 13m 37sec.',817,'2012-01-01 00:57:00','10th & U St NW',31111,'2012-01-01 01:11:00','21st & M St NW',31212,'W00913','Registered'),
     ('0h 1m 47sec.',107,'2012-01-01 00:57:00','5th St & K St NW',31600,'2012-01-01 00:59:00','4th St & Massachusetts Ave NW',31604,'W00713','Registered'),
     ('0h 8m 14sec.',494,'2012-01-01 00:58:00','Adams Mill & Columbia Rd NW',31104,'2012-01-01 01:06:00','17th & Corcoran St NW',31214,'W00954','Registered'),
     ('0h 20m 6sec.',1206,'2012-01-01 00:58:00','17th & Corcoran St NW',31214,'2012-01-01 01:18:00','4th & M St SW',31108,'W00174','Registered'),
     ('0h 14m 5sec.',845,'2012-01-01 00:59:00','California St & Florida Ave NW',31116,'2012-01-01 01:13:00','7th & T St NW',31109,'W00147','Registered'),
     ('0h 6m 50sec.',410,'2012-01-01 00:59:00','14th & V St NW',31101,'2012-01-01 01:06:00','Columbia Rd & Belmont St NW',31113,'W01130','Registered'),
     ('0h 1m 54sec.',114,'2012-01-01 01:02:00','Park Rd & Holmead Pl NW',31602,'2012-01-01 01:04:00','11th & Kenyon St NW',31102,'W00375','Registered'),
     ('0h 18m 44sec.',1124,'2012-01-01 01:04:00','4th St & Massachusetts Ave NW',31604,'2012-01-01 01:23:00','15th St & Massachusetts Ave SE',31626,'W01213','Registered');
INSERT INTO dc_bikeshare_q1_2012 (duration,duration_seconds,start_time,start_station,start_terminal,end_time,end_station,end_terminal,bike_number,rider_type) VALUES
     ('0h 16m 53sec.',1013,'2012-01-01 01:05:00','13th & H St NE',31611,'2012-01-01 01:22:00','10th & U St NW',31111,'W00933','Registered'),
     ('0h 6m 0sec.',360,'2012-01-01 01:08:00','Columbus Circle / Union Station',31623,'2012-01-01 01:14:00','11th & H St NE',31614,'W00021','Registered'),
     ('0h 2m 40sec.',160,'2012-01-01 01:08:00','18th & Bell St',31007,'2012-01-01 01:11:00','23rd & Eads',31013,'W00704','Registered'),
     ('0h 9m 2sec.',542,'2012-01-01 01:09:00','Eastern Market Metro / Pennsylvania Ave & 7th St SE',31613,'2012-01-01 01:18:00','Bladensburg Rd & Benning Rd NE',31617,'W00785','Registered'),
     ('0h 25m 12sec.',1512,'2012-01-01 01:09:00','Van Ness Metro / UDC',31300,'2012-01-01 01:34:00','Thomas Circle',31241,'W00186','Registered'),
     ('0h 7m 28sec.',448,'2012-01-01 01:11:00','14th & Rhode Island Ave NW',31203,'2012-01-01 01:18:00','Convention Center / 7th & M St NW',31223,'W00851','Registered'),
     ('0h 11m 3sec.',663,'2012-01-01 01:12:00','7th & T St NW',31109,'2012-01-01 01:23:00','1st & M St NE',31603,'W01195','Registered'),
     ('0h 4m 27sec.',267,'2012-01-01 01:12:00','15th & P St NW',31201,'2012-01-01 01:17:00','14th & V St NW',31101,'W00602','Registered'),
     ('0h 7m 37sec.',457,'2012-01-01 01:12:00','Connecticut Ave & Newark St NW / Cleveland Park',31305,'2012-01-01 01:20:00','20th St & Florida Ave NW',31110,'W00456','Registered'),
     ('0h 15m 52sec.',952,'2012-01-01 01:13:00','1st & M St NE',31603,'2012-01-01 01:29:00','8th & H St NW',31228,'W01084','Casual');
INSERT INTO dc_bikeshare_q1_2012 (duration,duration_seconds,start_time,start_station,start_terminal,end_time,end_station,end_terminal,bike_number,rider_type) VALUES
     ('0h 20m 12sec.',1212,'2012-01-01 01:14:00','15th & P St NW',31201,'2012-01-01 01:34:00','7th & Water St SW / SW Waterfront',31609,'W00340','Casual'),
     ('0h 15m 22sec.',922,'2012-01-01 01:14:00','1st & M St NE',31603,'2012-01-01 01:29:00','8th & H St NW',31228,'W00353','Casual'),
     ('0h 19m 45sec.',1185,'2012-01-01 01:14:00','15th & P St NW',31201,'2012-01-01 01:34:00','7th & Water St SW / SW Waterfront',31609,'W00929','Registered'),
     ('0h 9m 50sec.',590,'2012-01-01 01:15:00','11th & Kenyon St NW',31102,'2012-01-01 01:25:00','17th & Corcoran St NW',31214,'W00451','Registered'),
     ('0h 2m 13sec.',133,'2012-01-01 01:15:00','Connecticut Ave & Newark St NW / Cleveland Park',31305,'2012-01-01 01:17:00','3000 Connecticut Ave NW / National Zoo',31307,'W00148','Registered'),
     ('0h 2m 13sec.',133,'2012-01-01 01:16:00','16th & Harvard St NW',31103,'2012-01-01 01:18:00','14th & Harvard St NW',31105,'W00524','Registered'),
     ('11h 30m 27sec.',41427,'2012-01-01 01:16:00','20th & Crystal Dr',31002,'2012-01-01 12:46:00','20th & Crystal Dr',31002,'W00551','Casual'),
     ('0h 3m 48sec.',228,'2012-01-01 01:16:00','Adams Mill & Columbia Rd NW',31104,'2012-01-01 01:20:00','Calvert St & Woodley Pl NW',31106,'w00527','Registered'),
     ('0h 20m 2sec.',1202,'2012-01-01 01:16:00','20th & Crystal Dr',31002,'2012-01-01 01:36:00','20th & Crystal Dr',31002,'W00333','Casual'),
     ('0h 5m 18sec.',318,'2012-01-01 01:17:00','Lamont & Mt Pleasant NW',31107,'2012-01-01 01:22:00','14th & Harvard St NW',31105,'W01238','Registered');
INSERT INTO dc_bikeshare_q1_2012 (duration,duration_seconds,start_time,start_station,start_terminal,end_time,end_station,end_terminal,bike_number,rider_type) VALUES
     ('0h 21m 8sec.',1268,'2012-01-01 01:18:00','Columbia Rd & Belmont St NW',31113,'2012-01-01 01:39:00','20th St & Florida Ave NW',31110,'W00981','Registered'),
     ('0h 11m 35sec.',695,'2012-01-01 01:19:00','Massachusetts Ave & Dupont Circle NW',31200,'2012-01-01 01:30:00','14th & Harvard St NW',31105,'W00731','Registered'),
     ('0h 5m 54sec.',354,'2012-01-01 01:19:00','16th & Harvard St NW',31103,'2012-01-01 01:25:00','14th St & Spring Rd NW',31401,'W01465','Registered'),
     ('0h 10m 14sec.',614,'2012-01-01 01:20:00','California St & Florida Ave NW',31116,'2012-01-01 01:31:00','14th & Rhode Island Ave NW',31203,'W01236','Registered'),
     ('0h 9m 30sec.',570,'2012-01-01 01:21:00','California St & Florida Ave NW',31116,'2012-01-01 01:31:00','14th & Rhode Island Ave NW',31203,'W00208','Registered'),
     ('0h 7m 5sec.',425,'2012-01-01 01:22:00','20th St & Florida Ave NW',31110,'2012-01-01 01:29:00','California St & Florida Ave NW',31116,'W00823','Registered'),
     ('0h 22m 58sec.',1378,'2012-01-01 01:23:00','17th & K St NW / Farragut Square',31233,'2012-01-01 01:46:00','15th & P St NW',31201,'W00728','Registered'),
     ('0h 10m 37sec.',637,'2012-01-01 01:24:00','3000 Connecticut Ave NW / National Zoo',31307,'2012-01-01 01:34:00','Adams Mill & Columbia Rd NW',31104,'W00148','Registered'),
     ('0h 6m 50sec.',410,'2012-01-01 01:24:00','17th & Corcoran St NW',31214,'2012-01-01 01:31:00','20th St & Florida Ave NW',31110,'W00452','Registered'),
     ('0h 2m 53sec.',173,'2012-01-01 01:24:00','18th & Bell St',31007,'2012-01-01 01:27:00','23rd & Crystal Dr',31011,'W01265','Registered');
INSERT INTO dc_bikeshare_q1_2012 (duration,duration_seconds,start_time,start_station,start_terminal,end_time,end_station,end_terminal,bike_number,rider_type) VALUES
     ('0h 18m 50sec.',1130,'2012-01-01 01:25:00','10th & U St NW',31111,'2012-01-01 01:43:00','4th & M St SW',31108,'W00911','Registered'),
     ('0h 2m 22sec.',142,'2012-01-01 01:25:00','15th & P St NW',31201,'2012-01-01 01:28:00','17th & Corcoran St NW',31214,'W00305','Registered'),
     ('0h 9m 46sec.',586,'2012-01-01 01:29:00','36th & Calvert St NW / Glover Park',31304,'2012-01-01 01:38:00','Massachusetts Ave & Dupont Circle NW',31200,'W00302','Registered'),
     ('0h 9m 7sec.',547,'2012-01-01 01:30:00','Convention Center / 7th & M St NW',31223,'2012-01-01 01:39:00','14th & V St NW',31101,'W00289','Registered'),
     ('0h 8m 26sec.',506,'2012-01-01 01:30:00','Convention Center / 7th & M St NW',31223,'2012-01-01 01:39:00','14th & V St NW',31101,'W01233','Registered'),
     ('0h 9m 32sec.',572,'2012-01-01 01:31:00','14th & Harvard St NW',31105,'2012-01-01 01:40:00','14th St Heights / 14th & Crittenden St NW',31402,'W00731','Registered'),
     ('0h 7m 30sec.',450,'2012-01-01 01:31:00','14th & R St NW',31202,'2012-01-01 01:39:00','Massachusetts Ave & Dupont Circle NW',31200,'W00987','Registered'),
     ('0h 7m 5sec.',425,'2012-01-01 01:32:00','14th & R St NW',31202,'2012-01-01 01:39:00','Massachusetts Ave & Dupont Circle NW',31200,'W01284','Registered'),
     ('0h 6m 46sec.',406,'2012-01-01 01:32:00','14th & V St NW',31101,'2012-01-01 01:39:00','Convention Center / 7th & M St NW',31223,'W00519','Registered'),
     ('0h 20m 26sec.',1226,'2012-01-01 01:32:00','Thomas Circle',31241,'2012-01-01 01:53:00','Eckington Pl & Q St NE',31505,'W00137','Registered');
INSERT INTO dc_bikeshare_q1_2012 (duration,duration_seconds,start_time,start_station,start_terminal,end_time,end_station,end_terminal,bike_number,rider_type) VALUES
     ('0h 9m 3sec.',543,'2012-01-01 01:33:00','Columbus Circle / Union Station',31623,'2012-01-01 01:42:00','13th & D St NE',31622,'W00870','Casual'),
     ('0h 5m 57sec.',357,'2012-01-01 01:34:00','Lamont & Mt Pleasant NW',31107,'2012-01-01 01:40:00','Calvert St & Woodley Pl NW',31106,'W01193','Registered'),
     ('0h 19m 10sec.',1150,'2012-01-01 01:34:00','Thomas Circle',31241,'2012-01-01 01:53:00','Eckington Pl & Q St NE',31505,'W00596','Casual'),
     ('0h 7m 57sec.',477,'2012-01-01 01:34:00','Columbus Circle / Union Station',31623,'2012-01-01 01:42:00','13th & D St NE',31622,'W00863','Casual'),
     ('0h 27m 31sec.',1651,'2012-01-01 01:34:00','21st & I St NW',31205,'2012-01-01 02:02:00','7th & T St NW',31109,'W00042','Casual'),
     ('0h 10m 40sec.',640,'2012-01-01 01:35:00','4th & East Capitol St NE',31618,'2012-01-01 01:45:00','Potomac & Pennsylvania Ave SE',31606,'W00974','Registered'),
     ('0h 16m 45sec.',1005,'2012-01-01 01:35:00','Thomas Circle',31241,'2012-01-01 01:52:00','4th & East Capitol St NE',31618,'W00487','Registered'),
     ('0h 7m 36sec.',456,'2012-01-01 01:36:00','17th & Rhode Island Ave NW',31239,'2012-01-01 01:43:00','21st & I St NW',31205,'W00627','Registered'),
     ('0h 2m 50sec.',170,'2012-01-01 01:36:00','15th & P St NW',31201,'2012-01-01 01:39:00','17th & Corcoran St NW',31214,'W01300','Registered'),
     ('0h 25m 14sec.',1514,'2012-01-01 01:37:00','21st & I St NW',31205,'2012-01-01 02:02:00','7th & T St NW',31109,'W00582','Casual');
	 
COMMIT;