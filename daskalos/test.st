<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® NonCommercial, 7.4.1 of May 30, 2006 on February 20, 2023 at 11:53:20 am</time-stamp>


<class>
<name>Uzivatel</name>
<environment>Smalltalk</environment>
<super>DaskalosDataObject</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jmeno </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>DaskalosUserClasses</category>
<attributes>
<package>DaskalosUserClasses</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Uzivatel class</class-id> <category>instance variables behavior</category>

<body package="DaskalosUserClasses" selector="instVarTypes">instVarTypes
"resource for Daskalos"
^((Core.Dictionary new) add: (#jmeno -&gt; Core.String); yourself)</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>Uzivatel</class-id> <category>accessing</category>

<body package="DaskalosUserClasses" selector="jmeno">jmeno
"generated by Daskalos"

     ^jmeno</body>

<body package="DaskalosUserClasses" selector="jmeno:">jmeno: anObject
"generated by Daskalos"

     jmeno := (self checkValue: anObject forVariable: #jmeno)</body>
</methods>

<methods>
<class-id>Uzivatel</class-id> <category>instance initialization</category>

<body package="DaskalosUserClasses" selector="initialize">initialize
"generated by Daskalos"

     super initialize.
     jmeno := nil.
</body>
</methods>


</st-source>