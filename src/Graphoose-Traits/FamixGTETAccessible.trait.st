Trait {
	#name : #FamixGTETAccessible,
	#instVars : [
		'#incomingAccesses => GTEMany type: #FamixGTETAccess opposite: #variable'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETAccessible classSide >> annotation [

	<FMClass: #TAccessible super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETAccessible >> addIncomingAccess: anObject [
	<generated>
	^ self incomingAccesses add: anObject
]

{ #category : #accessing }
FamixGTETAccessible >> incomingAccesses [
	"Relation named: #incomingAccesses type: #FamixGTETAccess opposite: #variable"

	<generated>
	<FMComment: 'All Famix accesses pointing to this structural entity'>
	<derived>
	^ incomingAccesses
]

{ #category : #accessing }
FamixGTETAccessible >> incomingAccesses: anObject [

	<generated>
	incomingAccesses value: anObject
]
