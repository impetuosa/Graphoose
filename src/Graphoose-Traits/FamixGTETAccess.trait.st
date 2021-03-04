"
FAMIXAccess represents an access to a variable by a behavioural entity (for example, a function or a method). 

For example if the method foo accesses the instance variable x, there is an access with the following information:
	(i) From: aFAMIXMethod (foo)
	(ii) To: aFAMIXAttribute (x)
	
aFAMIXMethod (foo) can be accessed using the message accessor (and from)
aFAMIXAttribute (x) can be accessed using the message variable (and to). 

Furthermore it can be tagged as read or write using isWrite: aBoolean.

For each access in the source code, there is one famix access created even if it is from the same behavioral entity towards the same variable.
"
Trait {
	#name : #FamixGTETAccess,
	#instVars : [
		'#isWrite => GTEProperty',
		'#accessor => GTEOne type: #FamixGTETWithAccesses opposite: #accesses',
		'#variable => GTEOne type: #FamixGTETAccessible opposite: #incomingAccesses'
	],
	#traits : 'FamixGTETAssociation',
	#classTraits : 'FamixGTETAssociation classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETAccess classSide >> annotation [

	<FMClass: #TAccess super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETAccess >> accessor [
	"Relation named: #accessor type: #FamixGTETWithAccesses opposite: #accesses"

	<generated>
	<FMComment: 'Behavioural entity making the access to the variable. from-side of the association'>
	<source>
	^ accessor
]

{ #category : #accessing }
FamixGTETAccess >> accessor: anObject [

	<generated>
	accessor := anObject
]

{ #category : #testing }
FamixGTETAccess >> isAccess [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTETAccess >> isWrite [

	<FMProperty: #isWrite type: #Boolean>
	<generated>
	<FMComment: 'Write access'>
	^ isWrite
]

{ #category : #accessing }
FamixGTETAccess >> isWrite: anObject [
	<generated>
	isWrite := anObject
]

{ #category : #accessing }
FamixGTETAccess >> variable [
	"Relation named: #variable type: #FamixGTETAccessible opposite: #incomingAccesses"

	<generated>
	<FMComment: 'Variable accessed. to-side of the association'>
	<target>
	^ variable
]

{ #category : #accessing }
FamixGTETAccess >> variable: anObject [

	<generated>
	variable := anObject
]
