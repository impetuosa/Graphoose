Trait {
	#name : #FamixGTETWithReferences,
	#instVars : [
		'#outgoingReferences => GTEMany type: #FamixGTETReference opposite: #referencer'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithReferences classSide >> annotation [

	<FMClass: #TWithReferences super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithReferences >> addOutgoingReference: anObject [
	<generated>
	^ self outgoingReferences add: anObject
]

{ #category : #accessing }
FamixGTETWithReferences >> outgoingReferences [
	"Relation named: #outgoingReferences type: #FamixGTETReference opposite: #referencer"

	<generated>
	<FMComment: 'References from this entity to other entities.'>
	<derived>
	^ outgoingReferences
]

{ #category : #accessing }
FamixGTETWithReferences >> outgoingReferences: anObject [

	<generated>
	outgoingReferences value: anObject
]
