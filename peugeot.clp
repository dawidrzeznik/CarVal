(clear)
(reset)
(bind ?*zmienna* 0)
	
;;interfejs
(printout t "************************************" crlf)
(printout t "** 				  **" crlf)
(printout t "** System ekspertowy wspomagajacy **" crlf)
(printout t "** wybor samochodu Peugeot        **" crlf)
(printout t "** 				  **" crlf)
(printout t "************************************" crlf)
(printout t "************************************" crlf)
(printout t "** 				  **" crlf)
(printout t "** System zadaje kilka pytan      **" crlf)
(printout t "** i stara sie dobrac samochod    **" crlf)
(printout t "** 				  **" crlf)

(printout t "************************************" crlf)
(printout t " " crlf)
(printout t " " crlf)

;;pytania o fakty
(deftemplate carType (slot type))
(deftemplate carSize (slot size))
(deftemplate enginePower (slot power))
(deftemplate engineEconomy (slot economy))
(deftemplate carPrice (slot price))
(deftemplate carEquipment (slot equipment))


(printout t "Wybierz rodzaj samochodu " crlf)
(printout t " " crlf)
(printout t "(kompaktowy, rodzinny, sportowy) " crlf)
(printout t " " crlf)
(bind ?a (read))
(assert (carType(type ?a)))

(printout t " " crlf)
(printout t "Wybierz wielkosc samochodu " crlf)
(printout t " " crlf)
(printout t "(maly, duzy) " crlf)
(printout t " " crlf)
(bind ?b (read))
(assert (carSize(size ?b)))

(printout t " " crlf)
(printout t "Podaj wymagana moc silnika " crlf)
(printout t " " crlf)
(printout t "(60-280 KM) " crlf)
(printout t " " crlf)
(bind ?c (read))
(assert (enginePower(power ?c)))

(printout t " " crlf)
(printout t "Jakie spalanie akceptujesz? " crlf)
(printout t " " crlf)
(printout t "(4,5-9 l/100km) " crlf)
(printout t " " crlf)
(bind ?d (read))
(assert (engineEconomy(economy ?d)))

(printout t " " crlf)
(printout t "Podaj maksymalna cene " crlf)
(printout t " " crlf)
(printout t "(38000-158000 zl) " crlf)
(printout t " " crlf)
(bind ?e (read))
(assert (carPrice(price ?e)))

(printout t " " crlf)
(printout t "Podaj oczekiwane wyposazenie " crlf)
(printout t " " crlf)
(printout t "(podstawowe, komfortowe, pelne) " crlf)
(printout t " " crlf)
(bind ?f (read))
(assert (carEquipment(equipment ?f)))

(printout t " " crlf)
(printout t "Udzielono nastepujacych odpowiedzi: " crlf)
(printout t " " crlf)
(printout t "Rodzaj: " ?a crlf)
(printout t " " crlf)
(printout t "Wielkosc: " ?b crlf)
(printout t " " crlf)
(printout t "Moc: " ?c crlf)
(printout t " " crlf)
(printout t "Spalanie: " ?d crlf)
(printout t " " crlf)
(printout t "Cena: " ?e crlf)
(printout t " " crlf)
(printout t "Wyposazenie: " ?f crlf)
(printout t " " crlf)

(printout t " " crlf)
(printout t "Na podstawie zebranych danych " crlf)
(printout t " " crlf)
(printout t "System ekspertowy proponuje: " crlf)



;;reguly
(defrule rule1
    (carType {type == kompaktowy})
	(carSize {size == maly})
	(enginePower {power >= 60 && power <= 80})
	(engineEconomy {economy > 4 && economy <= 5})
	(carPrice {price > 38000 && price <= 44000})
	(carEquipment {equipment == podstawowe})
	
=>
(printout t " " crlf)
(printout t "Peugeot 208 1.0 68KM Access 4,5 l/100km 40000zl " crlf)

(bind ?*zmienna* 1)
)
;;
(defrule rule2
    (carType {type == kompaktowy})
	(carSize {size == maly})
	(enginePower {power >= 75 && power <= 90})
	(engineEconomy {economy > 5 && economy <= 6})
	(carPrice {price > 40000 && price <= 53000})
	(carEquipment {equipment == komfortowe})
	
=>
(printout t " " crlf)
(printout t "Peugeot 208 1.2 82KM Active 5 l/100km 49100zl " crlf)

(bind ?*zmienna* 1)
)
;;
(defrule rule3
    (carType {type == kompaktowy})
	(carSize {size == maly})
	(enginePower {power >= 100 && power <= 130})
	(engineEconomy {economy > 6 && economy <= 7})
	(carPrice {price > 55000 && price <= 65000})
	(carEquipment {equipment == pelne})
	
=>
(printout t " " crlf)
(printout t "Peugeot 208 1.6 155KM Allure 6 l/100km 67000zl " crlf)

(bind ?*zmienna* 1)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule rule4
    (carType {type == kompaktowy})
	(carSize {size == maly})
	(enginePower {power >= 75 && power <= 100})
	(engineEconomy {economy > 5 && economy <= 7})
	(carPrice {price > 35000 && price <= 50000})
	(carEquipment {equipment == podstawowe})
	
=>
(printout t " " crlf)
(printout t "Peugeot 208 1.2 82KM Access 6 l/100km 44200zl " crlf)

(bind ?*zmienna* 1)
)
;;
(defrule rule5
    (carType {type == kompaktowy})
	(carSize {size == maly})
	(enginePower {power >= 100 && power <= 130})
	(engineEconomy {economy > 5 && economy <= 7})
	(carPrice {price > 48000 && price <= 65000})
	(carEquipment {equipment == pelne})
	
=>
(printout t " " crlf)
(printout t "Peugeot 208 1.6 120KM Allure 6 l/100km 55800zl " crlf)

(bind ?*zmienna* 1)
)
;;
(defrule rule6
    (carType {type == kompaktowy})
	(carSize {size == maly})
	(enginePower {power >= 80 && power <= 100})
	(engineEconomy {economy > 5 && economy <= 7})
	(carPrice {price > 45000 && price <= 60000})
	(carEquipment {equipment == komfortowe})
	
=>
(printout t " " crlf)
(printout t "Peugeot 208 1.6 92KM Active 6 l/100km 57700zl " crlf)

(bind ?*zmienna* 1)
)
;;;;;;;;;;;;;;;;;;;;;;
(defrule rule7
    (carType {type == kompaktowy})
	(carSize {size == duzy})
	(enginePower {power >= 80 && power <= 90})
	(engineEconomy {economy > 6 && economy <= 8})
	(carPrice {price > 45000 && price <= 65000})
	(carEquipment {equipment == podstawowe})
	
=>
(printout t " " crlf)
(printout t "Peugeot 2008 1.2 82KM Access 6 l/100km 55300zl " crlf)

(bind ?*zmienna* 1)
)
;;
(defrule rule8
    (carType {type == kompaktowy})
	(carSize {size == duzy})
	(enginePower {power >= 100 && power <= 140})
	(engineEconomy {economy > 7 && economy <= 9})
	(carPrice {price > 56000 && price <= 76000})
	(carEquipment {equipment == komfortowe})
	
=>
(printout t " " crlf)
(printout t "Peugeot 2008 1.6 120KM Active 7 l/100km 66600zl " crlf)

(bind ?*zmienna* 1)
)
;;
(defrule rule9
    (carType {type == kompaktowy})
	(carSize {size == duzy})
	(enginePower {power >= 100 && power <= 125})
	(engineEconomy {economy > 7 && economy <= 9})
	(carPrice {price > 70000 && price <= 95000})
	(carEquipment {equipment == komfortowe})
	
=>
(printout t " " crlf)
(printout t "Peugeot 2008 1.6 115KM Allure 7 l/100km 85000zl " crlf)

(bind ?*zmienna* 1)
)
;;;;;;;;;;;;;;;;;;;;;;
(defrule rule10
    (carType {type == kompaktowy})
	(carSize {size == duzy})
	(enginePower {power >= 70 && power <= 90})
	(engineEconomy {economy > 5 && economy <= 7})
	(carPrice {price > 45000 && price <= 69000})
	(carEquipment {equipment == podstawowe})
	
=>
(printout t " " crlf)
(printout t "Peugeot 308 PureTech 1.2 82KM Access 6 l/100km 59900zl " crlf)

(bind ?*zmienna* 1)
)
;;
(defrule rule11
    (carType {type == kompaktowy})
	(carSize {size == duzy})
	(enginePower {power >= 110 && power <= 140})
	(engineEconomy {economy > 8 && economy <= 10})
	(carPrice {price > 60000 && price <= 85000})
	(carEquipment {equipment == komfortowe})
	
=>
(printout t " " crlf)
(printout t "Peugeot 308 PureTech 1.2 130KM Active 7 l/100km 74100zl " crlf)

(bind ?*zmienna* 1)
)
;;
(defrule rule12
    (carType {type == kompaktowy})
	(carSize {size == duzy})
	(enginePower {power >= 100 && power <= 125})
	(engineEconomy {economy > 7 && economy <= 9})
	(carPrice {price > 80000 && price <= 100000})
	(carEquipment {equipment == pelne})
	
=>
(printout t " " crlf)
(printout t "Peugeot 308 1.6 115KM Allure 7 l/100km 90300zl " crlf)

(bind ?*zmienna* 1)
)
;;;;;;;;;;;;;;;;;;;;;;





;;uruchamianie
;;(facts)
(run)

(if (= ?*zmienna* 0) then
(printout t " " crlf
"Niestety dla wybranych przez Pana/Pania parametrow " crlf 
" " crlf
"system ekspertowy nie znalazl odpowieniego modelu " crlf
" " crlf
"prosze ponownie uruchomic system i wprowadzic inne parametry " crlf))




