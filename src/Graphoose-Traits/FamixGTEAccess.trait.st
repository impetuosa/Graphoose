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
	#name : #FamixGTEAccess,
	#instVars : [
		'#accessor => FMGTEOne type: #FamixGTEWithAccesses opposite: #accesses',
		'#isWrite => FMGTEProperty',
		'#variable => FMGTEOne type: #FamixGTEAccessible opposite: #incomingAccesses'
	],
	#traits : 'FamixGTEAssociation',
	#classTraits : 'FamixGTEAssociation classTrait',
	#category : #'Graphoose-Traits-Access'
}

{ #category : #meta }
FamixGTEAccess classSide >> annotation [

	<FMClass: #TAccess super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEAccess >> accessor [
	"Relation named: #accessor type: #FamixGTEWithAccesses opposite: #accesses"

	<generated>
	<FMComment: 'Behavioural entity making the access to the variable. from-side of the association'>
	<source>
	^ accessor
]

{ #category : #accessing }
FamixGTEAccess >> accessor: anObject [

	<generated>
	accessor := anObject
]

{ #category : #testing }
FamixGTEAccess >> isAccess [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTEAccess >> isRead [
	<FMGTEProperty: #isRead type: #Boolean>
	<derived>
	<FMComment: 'Read access'>
	^ isWrite ifNil: [ false ] ifNotNil: [ isWrite not ]
]

{ #category : #accessing }
FamixGTEAccess >> isReadWriteUnknown [
	<FMGTEProperty: #isReadWriteUnknown type: #Boolean> <derived>
	<FMComment: ''>
	
	^ isWrite isNil
]

{ #category : #accessing }
FamixGTEAccess >> isWrite [

	<FMGTEProperty: #isWrite type: #Boolean>
	<FMComment: 'Write access'>
	^ isWrite ifNil: [ false ]
]

{ #category : #accessing }
FamixGTEAccess >> isWrite: anObject [
	<generated>
	isWrite := anObject
]

{ #category : #printing }
FamixGTEAccess >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Access)'
]

{ #category : #accessing }
FamixGTEAccess >> variable [
	"Relation named: #variable type: #FamixGTEAccessible opposite: #incomingAccesses"

	<generated>
	<FMComment: 'Variable accessed. to-side of the association'>
	<target>
	^ variable
]

{ #category : #accessing }
FamixGTEAccess >> variable: anObject [

	<generated>
	variable := anObject
]
