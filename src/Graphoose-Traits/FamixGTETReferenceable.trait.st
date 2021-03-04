Trait {
	#name : #FamixGTETReferenceable,
	#instVars : [
		'#incomingReferences => GTEMany type: #FamixGTETReference opposite: #referredType'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETReferenceable classSide >> annotation [

	<FMClass: #TReferenceable super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETReferenceable >> addIncomingReference: anObject [
	<generated>
	^ self incomingReferences add: anObject
]

{ #category : #accessing }
FamixGTETReferenceable >> incomingReferences [
	"Relation named: #incomingReferences type: #FamixGTETReference opposite: #referredType"

	<generated>
	<FMComment: 'References to this entity by other entities.'>
	<derived>
	^ incomingReferences
]

{ #category : #accessing }
FamixGTETReferenceable >> incomingReferences: anObject [

	<generated>
	incomingReferences value: anObject
]
