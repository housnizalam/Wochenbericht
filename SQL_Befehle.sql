/* SQL :http://localhost/phpmyadmin*/
ich habe Tabelle von Teilnehmers der heßt : Teilnehmers
diese Tabelle hat sieben Spalten
id,name,vorname,alter,adresse,email,noten,nationalität
__________________________________________________________
SELECT * FROM Teilnehmers                                    /* es gibt uns die alle informationen für die Tabelle*/
SELECT name FROM Teilnehmers                                 /* es gibt uns die alle namen von der Tabelle*/
SELECT name,alter FROM Teilnehmers                           /* es gibt uns die alle namen und ältern von der Tabelle*/
SELECT * FROM Teilnehmers ORDER BY alter                     /*  es gibt uns die alle informationen für die Tabelle aber sortiert nach alter : normalerweise is es sortiert von kleiner bis grosser*/
SELECT * FROM Teilnehmers ORDER BY alter DESC                /* mit DESC würder die Sortiernug von gross nach klein gemacht*/
SELECT * FROM Teilnehmers ORDER BY noten DESC LIMT 3         /* gibt uns die grosste drei Noten sotiert von grosser zu kleiner*/
SELECT * FROM Teilnehmers WHERE noten >80                    /* es gibt uns die Informationen von Teinehmer dssen Noten grosser als 80 ist */
SELECT name FROM Teilnehmers WHERE noten >80                 /* so gibt uns nur die Namen von dieser Teilnehmer*/
SELECT name FROM Teilnehmers WHERE noten >80 AND alter<15    /* ich kann mehrere Voraussetzungen machen*/
SELECT name FROM Teilnehmers WHERE noten >80 OR noten < 50   /* Man kann AND oder OR oder NOT benutzen*/
INSERT INTO Teilnehmers (id,name,vorname,alter,adresse,email,noten,nationalität)VALUES(NULL,'z','h',20,'Kasseler Straße 30','z.h.15@gmail.com',75 ,'Deutscher');
                                                            // so fügt man ein Teilnehmer ein
INSERT INTO Teilnehmers (id,name,vorname,alter,adresse,email,noten)VALUES(NULL,'z','h',20,'Kasseler Straße 30','z.h.15@gmail.com',75,'Syrer' ),(NULL,'z','h',20,'Kasseler Straße 30','z.h.15@gmail.com',75 ,'Deutscher'),(NULL,'z','h',20,'Kasseler Straße 30','z.h.15@gmail.com',75,'Costarica' )
                                                            /* so kann man mehrere Teinehmern einfügen*/
UPDATE Teilnehmers SET alter =alter+1 WHERE alter=15        /* so kann ich die informationen von Teinehmern ändern : in diesem Beispiel werden die alle Teinehmern die 15 Jahr alt sind ein Jahr grosser*/
UPDATE Teilnehmers SET noten =noten+1 WHERE vorname=housni  /* so bekommen die alle Teinehmern die housni heißen 10 noten mehr ;-) */
SELECT DISTINCT name FROM nationalität                      /* es vermeidet die abermalige Ergebnisse : DISTINCT */
DELETE FROM Teilnehmers WHERE noten < 40                    /* es löscht die Teinehmern deren Noten kleiner als 40 sind */
SELECT MAX (alter) FROM Teilnehmers                         /* es gibt uns der älterste Teilnehmer */
SELECT MAX (noten) FROM Teilnehmers                         /* es gibt uns der beste Teilnehmer nach noten */
SELECT AVG (alter) FROM Teilnehmers                         /* es gibt uns den durchnitlicher Alter von Teinehmern */
SELECT COUNT (name) FROM Teilnehmers                        /* es gibt uns die Anzahl vom Teilnehmern*/
SELECT COUNT (DISTINCT nationalität) FROM Teilnehmers       /* es gibt uns die Anzahl der Nationalitäten ohne Wiederholung */
SELECT SUM (noten) FROM Teilnehmers                         /* es gibt uns die Summe von alle noten */
SELECT * FROM Teilnehmers WHERE name LIKE 's%'              /* es gibt uns die alle Teilnehmern deren Namen mit s anfangen */
SELECT * FROM Teilnehmers WHERE name LIKE '%s'             /* es gibt uns die alle Teilnehmern deren Namen mit s enden */
SELECT * FROM Teilnehmers WHERE name LIKE '%s%'             /* es gibt uns die alle Teilnehmern deren Namen s behalten */
SELECT * FROM Teilnehmers WHERE name LIKE '_s%'            /* es gibt uns die alle Teilnehmern deren zweitene Buchstab ihrer Namen s ist */
SELECT * FROM Teilnehmers WHERE name LIKE 's_%'            /* es gibt uns die alle Teilnehmern deren Namen mit s anfangen und haben mindestens andere Buchstab*/
SELECT * FROM Teilnehmers WHERE name LIKE 's__%'           /* es gibt uns die alle Teilnehmern deren Namen mit s anfangen und haben mindestens zwei andere Buchstaben*/
SELECT * FROM Teilnehmers WHERE name LIKE 's%n'            /* es gibt uns die alle Teilnehmern deren Namen mit s anfangen und mit n enden */
SELECT * FROM Teilnehmers WHERE nationalität IN ('Deutsch', 'Turkisch') /* es gibt uns die alle Teilnehmern deren Nationalitäten Deutsch oder Turkisch sind */
SELECT * FROM Teilnehmers WHERE noten BETWEEN 40 AND 50    /* es gibt uns die alle Teilnehmern deren Noten zwischen 40 und 50 sind */
SELECT alter , SUM(noten) FROM Teilnehmers GROUP BY alter  /* es gibt uns sie Summe von noten für jedes alter */
SELECT name , SUM(noten) FROM Teilnehmers GROUP BY name    /* es gibt uns sie Summe von noten für jedes name */
SELECT name , SUM(noten) AS notensumme FROM Teilnehmers GROUP BY name HAVING notensumme >49  /* es gibt uns die Namen deren notensumme grosser als 49 (bestanden) : AS schaft eine neue Liste deren name notensumme ist aber diese Liste temporar ist */
SELECT Teilnehmers.noten , IFNULL(Teilnehmers.noten,0) as noten FROM Teilnehmers /* fals noten = null (der teilnehmer ist zur Prüfung nicht gekommen) dann noten =0 */
SELECT Teilnehmers.noten , COALESCE(Teilnehmers.noten,0) as noten FROM Teilnehmers /* fals noten = null (der teilnehmer ist zur Prüfung nicht gekommen) dann noten =0 */
/* Das Unterschied zwischen Primary und Unique ist : erstens nur eine Spalte des Tabels kann Primay werden aber viel Spalte können Unique sein zweitens Primary kann nicht Null sein aber Unique kann */
/*SELECT marken.* , autos.hersteller FROM autos , marken WHERE marken.m_hersteller=autos.id*/
/*SELECT marken.* , autos.hersteller FROM marken
INNER JOIN autos on marken.m_hersteller=autos.id*/
















