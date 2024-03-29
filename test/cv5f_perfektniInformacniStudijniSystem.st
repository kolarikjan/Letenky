<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® NonCommercial, 7.4.1 of May 30, 2006 on May 1, 2020 at 10:55:50 am</time-stamp>


<class>
<name>Osoba</name>
<environment>Smalltalk</environment>
<super>DaskalosDataObject</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jmeno prijmeni datumNarozeni </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>DaskalosUserClasses</category>
<attributes>
<package>DaskalosUserClasses</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Osoba class</class-id> <category>instance variables behavior</category>

<body package="DaskalosUserClasses" selector="instVarTypes">instVarTypes
"resource for Daskalos"
^((Core.Dictionary new) add: (#jmeno -&gt; Core.String); add: (#prijmeni -&gt; Core.String); add: (#datumNarozeni -&gt; Core.Date); yourself)</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Osoba</class-id> <category>accessing</category>

<body package="DaskalosUserClasses" selector="datumNarozeni">datumNarozeni
"generated by Daskalos"

     ^datumNarozeni</body>

<body package="DaskalosUserClasses" selector="datumNarozeni:">datumNarozeni: anObject
"generated by Daskalos"

     datumNarozeni := (self checkValue: anObject forVariable: #datumNarozeni)</body>

<body package="DaskalosUserClasses" selector="jmeno">jmeno
"generated by Daskalos"

     ^jmeno</body>

<body package="DaskalosUserClasses" selector="jmeno:">jmeno: anObject
"generated by Daskalos"

     jmeno := (self checkValue: anObject forVariable: #jmeno)</body>

<body package="DaskalosUserClasses" selector="prijmeni">prijmeni
"generated by Daskalos"

     ^prijmeni</body>

<body package="DaskalosUserClasses" selector="prijmeni:">prijmeni: anObject
"generated by Daskalos"

     prijmeni := (self checkValue: anObject forVariable: #prijmeni)</body>
</methods>

<methods>
<class-id>Osoba</class-id> <category>instance initialization</category>

<body package="DaskalosUserClasses" selector="initialize">initialize
"generated by Daskalos"

     super initialize.
     jmeno := nil.
     prijmeni := nil.
     datumNarozeni := nil.
</body>
</methods>

<methods>
<class-id>Osoba</class-id> <category>other methods</category>

<body package="DaskalosUserClasses" selector="vek">vek
	"metoda vracejici vek osoby, kdyz neni znam, tak se vraci chybova hodnota -1"

	datumNarozeni isNil 
		ifTrue: [^-1]
		ifFalse: [^((Date today subtractDate: datumNarozeni) / 365.2422) truncated]</body>
</methods>


<class>
<name>Pedagog</name>
<environment>Smalltalk</environment>
<super>Osoba</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>plat pocetLetPraxe </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>DaskalosUserClasses</category>
<attributes>
<package>DaskalosUserClasses</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Pedagog class</class-id> <category>instance variables behavior</category>

<body package="DaskalosUserClasses" selector="instVarTypes">instVarTypes
"resource for Daskalos"
^((Core.Dictionary new) add: (#jmeno -&gt; Core.String); add: (#prijmeni -&gt; Core.String); add: (#datumNarozeni -&gt; Core.Date); add: (#plat -&gt; Core.Number); add: (#pocetLetPraxe -&gt; Core.Number); yourself)</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Pedagog</class-id> <category>accessing</category>

<body package="DaskalosUserClasses" selector="plat">plat
"generated by Daskalos"

     ^plat</body>

<body package="DaskalosUserClasses" selector="plat:">plat: anObject
"generated by Daskalos"

     plat := (self checkValue: anObject forVariable: #plat)</body>

<body package="DaskalosUserClasses" selector="pocetLetPraxe">pocetLetPraxe
"generated by Daskalos"

     ^pocetLetPraxe</body>

<body package="DaskalosUserClasses" selector="pocetLetPraxe:">pocetLetPraxe: anObject
"generated by Daskalos"

     pocetLetPraxe := (self checkValue: anObject forVariable: #pocetLetPraxe)</body>
</methods>

<methods>
<class-id>Pedagog</class-id> <category>instance initialization</category>

<body package="DaskalosUserClasses" selector="initialize">initialize
"generated by Daskalos"

     super initialize.
     plat := nil.
     pocetLetPraxe := nil.
</body>
</methods>

<methods>
<class-id>Pedagog</class-id> <category>other methods</category>

<body package="DaskalosUserClasses" selector="kvalifikace">kvalifikace
	^(pocetLetPraxe ** 0.25 + 1) / 2</body>

<body package="DaskalosUserClasses" selector="mojePredmety">mojePredmety
	"predmety ve kterych jsem zkousel, tedy uplne neplati, ze je treba stale ucim, nebo z nich stale zkousim"

	^(Zkouska allInstances asSet select: [:e | e zkousejici = self]) 
		collect: [:t | t vpredmetu nazev]</body>

<body package="DaskalosUserClasses" selector="pocetZkouseni">pocetZkouseni
	^((Zkouska allInstances select: [:e | e zkousejici = self]) 
		collect: [:t | t vpredmetu nazev]) size</body>

<body package="DaskalosUserClasses" selector="pocetZPredmetu">pocetZPredmetu
	"pocet zkousenych predmetu (tedy jako Set)"

	^self mojePredmety size</body>
</methods>


<class>
<name>Student</name>
<environment>Smalltalk</environment>
<super>Osoba</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>skupina formaStudia studuje </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>DaskalosUserClasses</category>
<attributes>
<package>DaskalosUserClasses</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Student class</class-id> <category>instance variables behavior</category>

<body package="DaskalosUserClasses" selector="instVarTypes">instVarTypes
"resource for Daskalos"
^((Core.Dictionary new) add: (#studuje -&gt; Core.Set); add: (#formaStudia -&gt; Core.String); add: (#datumNarozeni -&gt; Core.Date); add: (#prijmeni -&gt; Core.String); add: (#jmeno -&gt; Core.String); add: (#skupina -&gt; Core.Number); yourself)</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Student</class-id> <category>accessing</category>

<body package="DaskalosUserClasses" selector="formaStudia">formaStudia
"generated by Daskalos"

     ^formaStudia</body>

<body package="DaskalosUserClasses" selector="formaStudia:">formaStudia: anObject
"generated by Daskalos"

     formaStudia := (self checkValue: anObject forVariable: #formaStudia)</body>

<body package="DaskalosUserClasses" selector="skupina">skupina
"generated by Daskalos"

     ^skupina</body>

<body package="DaskalosUserClasses" selector="skupina:">skupina: anObject
"generated by Daskalos"

     skupina := (self checkValue: anObject forVariable: #skupina)</body>

<body package="DaskalosUserClasses" selector="studuje">studuje
"generated by Daskalos"

     ^studuje</body>
</methods>

<methods>
<class-id>Student</class-id> <category>instance initialization</category>

<body package="DaskalosUserClasses" selector="initialize">initialize
"generated by Daskalos"

     super initialize.
     skupina := nil.
     formaStudia := nil.
     studuje := Set new.
</body>
</methods>

<methods>
<class-id>Student</class-id> <category>other methods</category>

<body package="DaskalosUserClasses" selector="cervenyDiplom">cervenyDiplom
	self mujPrumer asFloat &lt; 1.5 ifTrue: [^'ano'] ifFalse: [^'ne']</body>

<body package="DaskalosUserClasses" selector="mojeZkousky">mojeZkousky
	^(Zkouska allInstances select: [:i | i zkousen = self]) flatten</body>

<body package="DaskalosUserClasses" selector="mujPrumer">mujPrumer
	^(self mojeZkousky collect: [:z | z znamka]) avg
	"pocita ze vsek zkousek i vicero predmetu - bereme to jako feature"</body>

<body package="DaskalosUserClasses" selector="ziskKreditu">ziskKreditu
	^((self mojeZkousky select: [:x | x uspelStudent = 'ano']) 
		collect: [:k | k vpredmetu kredity]) sum</body>
</methods>


<class>
<name>Predmet</name>
<environment>Smalltalk</environment>
<super>DaskalosDataObject</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>nazev kod kredity </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>DaskalosUserClasses</category>
<attributes>
<package>DaskalosUserClasses</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Predmet class</class-id> <category>instance variables behavior</category>

<body package="DaskalosUserClasses" selector="instVarTypes">instVarTypes
"resource for Daskalos"
^((Core.Dictionary new) add: (#nazev -&gt; Core.String); add: (#kredity -&gt; Core.Number); add: (#kod -&gt; Core.String); yourself)</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Predmet</class-id> <category>accessing</category>

<body package="DaskalosUserClasses" selector="kod">kod
"generated by Daskalos"

     ^kod</body>

<body package="DaskalosUserClasses" selector="kod:">kod: anObject
"generated by Daskalos"

     kod := (self checkValue: anObject forVariable: #kod)</body>

<body package="DaskalosUserClasses" selector="kredity">kredity
"generated by Daskalos"

     ^kredity</body>

<body package="DaskalosUserClasses" selector="kredity:">kredity: anObject
"generated by Daskalos"

     kredity := (self checkValue: anObject forVariable: #kredity)</body>

<body package="DaskalosUserClasses" selector="nazev">nazev
"generated by Daskalos"

     ^nazev</body>

<body package="DaskalosUserClasses" selector="nazev:">nazev: anObject
"generated by Daskalos"

     nazev := (self checkValue: anObject forVariable: #nazev)</body>
</methods>

<methods>
<class-id>Predmet</class-id> <category>instance initialization</category>

<body package="DaskalosUserClasses" selector="initialize">initialize
"generated by Daskalos"

     super initialize.
     nazev := nil.
     kod := nil.
     kredity := nil.
</body>
</methods>

<methods>
<class-id>Predmet</class-id> <category>other methods</category>

<body package="DaskalosUserClasses" selector="prumerPredmetu">prumerPredmetu
	^((Zkouska allInstances select: [:i | i vpredmetu = self]) 
		collect: [:z | z znamka]) avg</body>

<body package="DaskalosUserClasses" selector="studentiStudujiciPredmet">studentiStudujiciPredmet
	"pomoci nove asociace studuje, je mozno vytvorit jendodyuchou metodu, stavajici metoda byla nahrazena spravnejsi metodou studentiZkouseniVPredmetu"

	"postup zjistime vsechny zkousky, ty naparaujeme na predmety v teto metode pomoci hodnoty self a nasledne vypiseme jednotlive studenty"

	^Student allInstances select: [:e | e studuje includes: self]</body>

<body package="DaskalosUserClasses" selector="studentiZkouseniVPredmetu">studentiZkouseniVPredmetu
	"nahrazeni metody studentiStudujiciPredmet na StudentiZkouseniVpredmetu, pridani asociace mezi student a predmet s vazbou studuje"

	"predpokladejme, ze student definice studuia predmetu odpovida tomu, ze se ucastni na zkousce; spravneji by bylo lepsi vytvorit asociaci studuje z studenta na predmet"

	"postup zjistime vsechny zkousky, ty naparaujeme na predmety v teto metode pomoci hodnoty self a nasledne vypiseme jednotlive studenty"

	^(Zkouska allInstances select: [:i | i vpredmetu = self]) 
		collect: [:i | i zkousen]</body>

<body package="DaskalosUserClasses" selector="uspesnostPredmetu">uspesnostPredmetu
	"definice pomocnych promennych"

	| uspesne vsechny |
	uspesne := (Zkouska allInstances 
				select: [:i | i vpredmetu = self and: [i znamka &lt; 4]]) size.
	vsechny := (Zkouska allInstances select: [:i | i vpredmetu = self]) size.
	^uspesne / vsechny * 100	"pokud cheme cislo v desetinem tvaru je mozno uzit konverzi asFloat"</body>
</methods>


<class>
<name>Mistnost</name>
<environment>Smalltalk</environment>
<super>DaskalosDataObject</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>oznaceni budova </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>DaskalosUserClasses</category>
<attributes>
<package>DaskalosUserClasses</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Mistnost class</class-id> <category>instance variables behavior</category>

<body package="DaskalosUserClasses" selector="instVarTypes">instVarTypes
"resource for Daskalos"
^((Core.Dictionary new) add: (#budova -&gt; Core.String); add: (#oznaceni -&gt; Core.String); yourself)</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Mistnost</class-id> <category>accessing</category>

<body package="DaskalosUserClasses" selector="budova">budova
"generated by Daskalos"

     ^budova</body>

<body package="DaskalosUserClasses" selector="budova:">budova: anObject
"generated by Daskalos"

     budova := (self checkValue: anObject forVariable: #budova)</body>

<body package="DaskalosUserClasses" selector="oznaceni">oznaceni
"generated by Daskalos"

     ^oznaceni</body>

<body package="DaskalosUserClasses" selector="oznaceni:">oznaceni: anObject
"generated by Daskalos"

     oznaceni := (self checkValue: anObject forVariable: #oznaceni)</body>
</methods>

<methods>
<class-id>Mistnost</class-id> <category>instance initialization</category>

<body package="DaskalosUserClasses" selector="initialize">initialize
"generated by Daskalos"

     super initialize.
     oznaceni := nil.
     budova := nil.
</body>
</methods>


<class>
<name>Zkouska</name>
<environment>Smalltalk</environment>
<super>DaskalosDataObject</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>datumZkouseni znamka vmistnosti zkousen zkousejici vpredmetu </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>DaskalosUserClasses</category>
<attributes>
<package>DaskalosUserClasses</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Zkouska class</class-id> <category>instance variables behavior</category>

<body package="DaskalosUserClasses" selector="instVarTypes">instVarTypes
"resource for Daskalos"
^((Core.Dictionary new) add: (#zkousejici -&gt; Core.Object); add: (#zkousen -&gt; Core.Object); add: (#vpredmetu -&gt; Core.Object); add: (#vmistnosti -&gt; Core.Object); add: (#datumZkouseni -&gt; Core.Date); add: (#znamka -&gt; Core.Number); yourself)</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Zkouska</class-id> <category>accessing</category>

<body package="DaskalosUserClasses" selector="datumZkouseni">datumZkouseni
"generated by Daskalos"

     ^datumZkouseni</body>

<body package="DaskalosUserClasses" selector="datumZkouseni:">datumZkouseni: anObject
"generated by Daskalos"

     datumZkouseni := (self checkValue: anObject forVariable: #datumZkouseni)</body>

<body package="DaskalosUserClasses" selector="vmistnosti">vmistnosti
"generated by Daskalos"

     ^vmistnosti</body>

<body package="DaskalosUserClasses" selector="vmistnosti:">vmistnosti: anObject
"generated by Daskalos"

     vmistnosti := (self checkValue: anObject forVariable: #vmistnosti)</body>

<body package="DaskalosUserClasses" selector="vpredmetu">vpredmetu
"generated by Daskalos"

     ^vpredmetu</body>

<body package="DaskalosUserClasses" selector="vpredmetu:">vpredmetu: anObject
"generated by Daskalos"

     vpredmetu := (self checkValue: anObject forVariable: #vpredmetu)</body>

<body package="DaskalosUserClasses" selector="zkousejici">zkousejici
"generated by Daskalos"

     ^zkousejici</body>

<body package="DaskalosUserClasses" selector="zkousejici:">zkousejici: anObject
"generated by Daskalos"

     zkousejici := (self checkValue: anObject forVariable: #zkousejici)</body>

<body package="DaskalosUserClasses" selector="zkousen">zkousen
"generated by Daskalos"

     ^zkousen</body>

<body package="DaskalosUserClasses" selector="zkousen:">zkousen: anObject
"generated by Daskalos"

     zkousen := (self checkValue: anObject forVariable: #zkousen)</body>

<body package="DaskalosUserClasses" selector="znamka">znamka
"generated by Daskalos"

     ^znamka</body>

<body package="DaskalosUserClasses" selector="znamka:">znamka: anObject
"generated by Daskalos"

     znamka := (self checkValue: anObject forVariable: #znamka)</body>
</methods>

<methods>
<class-id>Zkouska</class-id> <category>instance initialization</category>

<body package="DaskalosUserClasses" selector="initialize">initialize
"generated by Daskalos"

     super initialize.
     datumZkouseni := nil.
     znamka := nil.
     vmistnosti := nil.
     zkousen := nil.
     zkousejici := nil.
     vpredmetu := nil.
</body>
</methods>

<methods>
<class-id>Zkouska</class-id> <category>other methods</category>

<body package="DaskalosUserClasses" selector="uspelStudent">uspelStudent
	znamka &lt; 4 ifTrue: [^'ano'] ifFalse: [^'ne']</body>
</methods>


</st-source>
