Trait {
	#name : #FamixGTEWithReferences,
	#instVars : [
		'#outgoingReferences => FMGTEMany type: #FamixGTEReference opposite: #referencer'
	],
	#category : #'Graphoose-Traits-Reference'
}

{ #category : #meta }
FamixGTEWithReferences classSide >> annotation [

	<FMClass: #TWithReferences super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithReferences >> addOutgoingReference: aReference [ 
	outgoingReferences add: aReference
]

{ #category : #accessing }
FamixGTEWithReferences >> outgoingReferences [
	"Relation named: #outgoingReferences type: #FamixGTEReference opposite: #referencer"

	<generated>
	<FMComment: 'References from this entity to other entities.'>
	<derived>
	^ outgoingReferences
]

{ #category : #accessing }
FamixGTEWithReferences >> outgoingReferences: anObject [

	<generated>
	outgoingReferences value: anObject
]
