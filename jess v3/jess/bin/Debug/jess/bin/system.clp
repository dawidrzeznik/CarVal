(clear)
(reset)
(bind ?*zmienna* 0)
	
;;interfejs
(printout t "************************************" crlf)
(printout t "** 				  **" crlf)
(printout t "** System ekspertowy wspomagajacy **" crlf)
(printout t "** wybor telefonu komorkowego     **" crlf)
(printout t "** 				  **" crlf)
(printout t "************************************" crlf)
(printout t "************************************" crlf)
(printout t "** 				  **" crlf)
(printout t "** System zadaje szereg pytan i   **" crlf)
(printout t "** zwraca najlepsze rozwiazanie   **" crlf)
(printout t "** 				  **" crlf)
(printout t "************************************" crlf)
(printout t "************************************" crlf)
(printout t "** 				  **" crlf)
(printout t "** Prosze udzielac odpowiedzi     **" crlf)
(printout t "** Mozliwy wybor znajduje sie w   **" crlf)
(printout t "** nawiasach obok pytania, prosze **" crlf)
(printout t "** udzielac tylko takich odp.     **" crlf)
(printout t "** 				  **" crlf)
(printout t "************************************" crlf)
(printout t " " crlf)
(printout t " " crlf)

;;pytania o fakty
(deftemplate wielkosc_tel (slot wielkosc))
(deftemplate czuwanie_h (slot czuwanie))
(deftemplate rozmowy_min (slot rozmowy))
(deftemplate cena_tel (slot cena))

(printout t "Jaka interesuje Cie wielkosc telefonu ? " crlf)
(printout t " " crlf)
(printout t "(duzy, sredni, maly) " crlf)
(printout t " " crlf)
(bind ?a (read))
(assert (wielkosc_tel(wielkosc ?a)))

(printout t " " crlf)
(printout t "Jaki interesuje Cie czas czuwania [godziny] ? " crlf)
(printout t " " crlf)
(printout t "(prosze podac czas z przedzialu: 0 - 300) " crlf)
(printout t " " crlf)
(bind ?b (read))
(assert (czuwanie_h(czuwanie ?b)))

(printout t " " crlf)
(printout t "Jaki interesuje Cie czas rozmow [minuty] ? " crlf)
(printout t " " crlf)
(printout t "(prosze podac czas z przedzialu: 0 - 300) " crlf)
(printout t " " crlf)
(bind ?c (read))
(assert (rozmowy_min(rozmowy ?c)))

(printout t " " crlf)
(printout t "Jaka interesuje Cie cena telefonu [zl] ? " crlf)
(printout t " " crlf)
(printout t "(prosze podac cene z przedzialu: 0 - 1000) " crlf)
(printout t " " crlf)
(bind ?d (read))
(assert (cena_tel(cena ?d)))

(printout t " " crlf)
(printout t "Udzielil Pan/Pani nastepujacych odpowiedzi: " crlf)
(printout t " " crlf)
(printout t "Wielkosc telefonu: " ?a crlf)
(printout t " " crlf)
(printout t "Czas czuwania telefonu [godziny]: " ?b crlf)
(printout t " " crlf)
(printout t "Czas rozmow telefonu [minuty]: " ?c crlf)
(printout t " " crlf)
(printout t "Cena telefonu [zl]: " ?d crlf)
(printout t " " crlf)

(printout t " " crlf)
(printout t "Na podstawie udzielonych odpowiedzi " crlf)
(printout t " " crlf)
(printout t "System ekspertowy proponuje nastepujace(y) modele telefonow: " crlf)


;;funkcje
(deffunction tel1 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - wybieranie jednoprzyciskowe " crlf
  " - bateria wibracyjna " crlf
  " - kalkulator " crlf
  " - budzik, zegarek " crlf
  " - zapamietywanie adresu " crlf
  " - klips "  crlf) 

)

(deffunction tel2 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - powiadamianie wibracyjne " crlf
  " - zegar, kalendarz " crlf) 

)

(deffunction tel3 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - wybieranie numerow za pomoca glˆosu " crlf
  " - dyktafon " crlf
  " - organizer  " crlf
  " - zegar, kalendarz "  crlf) 

)

(deffunction tel4 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - zegar, kalendarz " crlf
  " - zapamietywanie adresu " crlf
  " - klips "  crlf) 

)

(deffunction tel5 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - bateria wibracyjna " crlf
  " - kalkulator " crlf
  " - klips "  crlf) 

)

(deffunction tel6 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - budzik, zegarek " crlf
  " - przypomnienie o spotkaniu " crlf
  " - klips "  crlf) 

)

(deffunction tel7 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - zintegrowany zestaw gˆosnomowiacy, kalendarz " crlf
  " - budzik, zegarek " crlf
  " - zapamietywanie adresu " crlf
  " - klips "  crlf) 

)

(deffunction tel8 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - wybieranie jednoprzyciskowe " crlf
  " - zintegrowany zestaw gˆosnomowiacy,kalendarz " crlf
  " - klips "  crlf) 

)

(deffunction tel9 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji, ale jest malˆy i lekki "  crlf ) 

)

(deffunction tel10 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - dyktafon " crlf
  " - zegarek " crlf
  " - Dual band GSM/DCS 900/1800 " crlf
  " - 14 wersji jezykowych  "  crlf) 

)

(deffunction tel11 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji "  crlf) 

)

(deffunction tel12 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - zegarek " crlf
  " - Dual band GSM/DCS 900/1800 " crlf
  " - 10 wersji jezykowych  "  crlf)

)

(deffunction tel13 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji "  crlf) 

)

(deffunction tel14 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji "  crlf) 

)

(deffunction tel15 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - zegar, kalendarz " crlf
  " - organizer " crlf
  " - kalkulator " crlf
  " - wysuwany mikrofon "  crlf) 

)

(deffunction tel16 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - powiadamianie wibracyjne " crlf
  " - zegarek " crlf
  " - kalkulator " crlf
  " - dual band GSM/DCS 900/1800 " crlf
  " - animowane menu "  crlf) 

)

(deffunction tel17 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - wybieranie jednoprzyciskowe " crlf
  " - bateria wibracyjna " crlf
  " - zegar, budzik "  crlf) 

)

(deffunction tel18 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji "  crlf) 

)

(deffunction tel19 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - powiadamianie wibracyjne " crlf
  " - dyktafon " crlf
  " - dual band GSM/DCS 900/1800 "  crlf) 

)

(deffunction tel20 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji "  crlf) 

)

(deffunction tel21 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - powiadamianie wibracyjne " crlf
  " - data " crlf
  " - kalkulator " crlf
  " - alarm " crlf
  " - terminarz "  crlf) 

)

(deffunction tel22 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji "  crlf) 

)

(deffunction tel23 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji "  crlf) 

)

(deffunction tel24 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - wibrator " crlf
  " - 19 wersji jezykowych menu (caˆlkowicie bezuzyteczne) "  crlf) 

)

(deffunction tel25 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - wibrator " crlf
  " - dyktafon "  crlf) 

)

(deffunction tel26 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - wibrator " crlf
  " - dyktafon " crlf
  " - wbudowany modem "  crlf) 

)

(deffunction tel27 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - dual band GSM 900/1800 " crlf
  " - wibrator " crlf
  " - dyktafon " crlf
  " - wbudowany modem "  crlf) 

)

(deffunction tel28 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - Jog-Dial "  crlf) 

)

(deffunction tel29 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - dual band GSM 900/PCS1900 "  crlf) 

)

(deffunction tel30 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - bateria wibracyjna " crlf
  " - kalkulator " crlf
  " - budzik z zegarkiem " crlf
  " - zapamietywanie adresu " crlf
  " - dual band 900/1800  "  crlf) 

)

(deffunction tel31 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji "  crlf) 

)

(deffunction tel32 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji "  crlf) 

)

(deffunction tel33 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - kalkulator " crlf
  " - budzik, zegarek " crlf
  " - klips "  crlf) 

)

(deffunction tel34 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " Telefon nie ma dodatkowych funkcji "  crlf) 

)

(deffunction tel35 ()
(printout t " " crlf)
(printout t "Telefon ma rowniez funkcje: " crlf
  " - wbudowany modem " crlf
  " - kalkulator " crlf
  " - budzik, zegarek " crlf
  " - klips "  crlf) 

)


;;reguly
(defrule regula1
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 750 && cena <= 1000})
=>
(printout t " " crlf)
(printout t "Alcatel One Touch Pro " crlf)
(tel1 ())
(bind ?*zmienna* 1)
)

(defrule regula2
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Alcatel One Touch Pocket " crlf)
(tel2 ())
(bind ?*zmienna* 1)
)

(defrule regula3
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Alcatel One Touch View " crlf)
(tel3 ())
(bind ?*zmienna* 1)
)

(defrule regula4
    (wielkosc_tel {wielkosc == maly})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Alcatel One Touch Club " crlf)
(tel4 ())
(bind ?*zmienna* 1)
)

(defrule regula5
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 250 && cena <= 500})
=>
(printout t " " crlf)
(printout t "Alcatel One Touch Club+ " crlf)
(tel5 ())
(bind ?*zmienna* 1)
)

(defrule regula6
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 250 && cena <= 500})
=>
(printout t " " crlf)
(printout t "Alcatel One Touch Easy HF " crlf)
(tel6 ())
(bind ?*zmienna* 1)
)

(defrule regula7
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 0 && cena <= 250})
=>
(printout t " " crlf)
(printout t "Alcatel One Touch Max " crlf)
(tel7 ())
(bind ?*zmienna* 1)
)

(defrule regula8
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 250 && cena <= 500})
=>
(printout t " " crlf)
(printout t "Alcatel One Touch db " crlf)
(tel8 ())
(bind ?*zmienna* 1)
)

(defrule regula9
    (wielkosc_tel {wielkosc == maly})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 750 && cena <= 1000})
=>
(printout t " " crlf)
(printout t "Motorola Star Tac " crlf)
(tel9 ())
(bind ?*zmienna* 1)
)

(defrule regula10
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 750 && cena <= 1000})
=>
(printout t " " crlf)
(printout t "Motorola CD930 " crlf)
(tel10 ())
(bind ?*zmienna* 1)
)

(defrule regula11
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 750 && cena <= 1000})
=>
(printout t " " crlf)
(printout t "Motorola M3688 " crlf)
(tel11 ())
(bind ?*zmienna* 1)
)

(defrule regula12
    (wielkosc_tel {wielkosc == maly})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Motorola V3688 " crlf)
(tel12 ())
(bind ?*zmienna* 1)
)

(defrule regula13
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 250 && cena <= 500})
=>
(printout t " " crlf)
(printout t "Philips Twist " crlf)
(tel13 ())
(bind ?*zmienna* 1)
)

(defrule regula14
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 250 && cena <= 500})
=>
(printout t " " crlf)
(printout t "Philips Diga " crlf)
(tel14 ())
(bind ?*zmienna* 1)
)

(defrule regula15
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 0 && cena <= 250})
=>
(printout t " " crlf)
(printout t "Philips Genie " crlf)
(tel15 ())
(bind ?*zmienna* 1)
)

(defrule regula16
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 0 && cena <= 250})
=>
(printout t " " crlf)
(printout t "Nokia 3210 " crlf)
(tel16 ())
(bind ?*zmienna* 1)
)

(defrule regula17
    (wielkosc_tel {wielkosc == maly})
	(czuwanie_h {czuwanie > 200 && czuwanie <= 300 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 750 && cena <= 1000})
=>
(printout t " " crlf)
(printout t "Nokia 5110 " crlf)
(tel17 ())
(bind ?*zmienna* 1)
)

(defrule regula18
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 200 && czuwanie <= 300 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 750 && cena <= 1000})
=>
(printout t " " crlf)
(printout t "Nokia 6110 " crlf)
(tel18 ())
(bind ?*zmienna* 1)
)

(defrule regula19
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Nokia 6150 " crlf)
(tel19 ())
(bind ?*zmienna* 1)
)

(defrule regula20
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Nokia 8110 " crlf)
(tel20 ())
(bind ?*zmienna* 1)
)

(defrule regula21
    (wielkosc_tel {wielkosc == maly})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 250 && cena <= 500})
=>
(printout t " " crlf)
(printout t "Nokia 8810A " crlf)
(tel21 ())
(bind ?*zmienna* 1)
)

(defrule regula22
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 750 && cena <= 1000})
=>
(printout t " " crlf)
(printout t "Nokia 9000 " crlf)
(tel22 ())
(bind ?*zmienna* 1)
)

(defrule regula23
    (wielkosc_tel {wielkosc == maly})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 250 && cena <= 500})
=>
(printout t " " crlf)
(printout t "Nokia 9110 " crlf)
(tel23 ())
(bind ?*zmienna* 1)
)

(defrule regula24
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Panasonic G 520 " crlf)
(tel24 ())
(bind ?*zmienna* 1)
)

(defrule regula25
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 0 && cena <= 250})
=>
(printout t " " crlf)
(printout t "Panasonic G 600 " crlf)
(tel25 ())
(bind ?*zmienna* 1)
)

(defrule regula26
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 0 && cena <= 250})
=>
(printout t " " crlf)
(printout t "Panasonic G 600i " crlf)
(tel26 ())
(bind ?*zmienna* 1)
)

(defrule regula27
    (wielkosc_tel {wielkosc == maly})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 0 && rozmowy <= 100})
	(cena_tel {cena > 250 && cena <= 500})
=>
(printout t " " crlf)
(printout t "Panasonic GD 90 " crlf)
(tel27 ())
(bind ?*zmienna* 1)
)

(defrule regula28
    (wielkosc_tel {wielkosc == maly})
	(czuwanie_h {czuwanie > 200 && czuwanie <= 300 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Sony CMD-C1 " crlf)
(tel28 ())
(bind ?*zmienna* 1)
)

(defrule regula29
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 0 && cena <= 250})
=>
(printout t " " crlf)
(printout t "Bosch World 718 " crlf)
(tel29 ())
(bind ?*zmienna* 1)
)

(defrule regula30
    (wielkosc_tel {wielkosc == maly})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 0 && rozmowy <= 100})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Ericsson A1018s " crlf)
(tel30 ())
(bind ?*zmienna* 1)
)

(defrule regula31
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Ericsson GA 628 " crlf)
(tel31 ())
(bind ?*zmienna* 1)
)

(defrule regula32
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 0 && rozmowy <= 100})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Ericsson GH 688 " crlf)
(tel32 ())
(bind ?*zmienna* 1)
)

(defrule regula33
    (wielkosc_tel {wielkosc == maly})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 0 && cena <= 250})
=>
(printout t " " crlf)
(printout t "Ericsson GF 768 " crlf)
(tel33 ())
(bind ?*zmienna* 1)
)

(defrule regula34
    (wielkosc_tel {wielkosc == sredni})
	(czuwanie_h {czuwanie > 0 && czuwanie <= 100 })
	(rozmowy_min {rozmowy > 200 && rozmowy <= 300})
	(cena_tel {cena > 500 && cena <= 750})
=>
(printout t " " crlf)
(printout t "Ericsson GF 788 " crlf)
(tel34 ())
(bind ?*zmienna* 1)
)

(defrule regula35
    (wielkosc_tel {wielkosc == duzy})
	(czuwanie_h {czuwanie > 100 && czuwanie <= 200 })
	(rozmowy_min {rozmowy > 100 && rozmowy <= 200})
	(cena_tel {cena > 0 && cena <= 250})
=>
(printout t " " crlf)
(printout t "Ericsson GF 888 " crlf)
(tel35 ())
(bind ?*zmienna* 1)
)



;;uruchamianie
;;(facts)
(run)

(if (= ?*zmienna* 0) then
(printout t " " crlf
"Niestety dla wybranych przez Pana/Pania parametrow " crlf 
" " crlf
"system ekspertowy nie znalazl odpowieniego telefonu " crlf
" " crlf
"prosze ponownie uruchomic system i wprowadzic inne parametry " crlf))




