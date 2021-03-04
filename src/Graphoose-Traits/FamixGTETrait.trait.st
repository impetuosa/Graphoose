"
FamixGTErait models a trait as it can be found in Pharo or PHP.
"
Trait {
	#name : #FamixGTETrait,
	#instVars : [
		'#incomingTraitUsages => FMGTEMany type: #FamixGTETraitUsage opposite: #trait',
		'#traitOwner => FMGTEOne type: #FamixGTEWithTraits opposite: #traits'
	],
	#category : #'Graphoose-Traits-Trait'
}

{ #category : #meta }
FamixGTETrait classSide >> annotation [

	<FMClass: #TTrait super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETrait >> addIncomingTraitUsage: anObject [

	incomingTraitUsages add: anObject

]

{ #category : #accessing }
FamixGTETrait >> incomingTraitUsages [
	"Relation named: #incomingTraitUsages type: #FamixGTETraitUsage opposite: #trait"

	<generated>
	<derived>
	^ incomingTraitUsages
]

{ #category : #accessing }
FamixGTETrait >> incomingTraitUsages: anObject [

	<generated>
	incomingTraitUsages value: anObject
]

{ #category : #accessing }
FamixGTETrait >> traitOwner [
	"Relation named: #traitOwner type: #FamixGTEWithTraits opposite: #traits"

	<generated>
	^ traitOwner
]

{ #category : #accessing }
FamixGTETrait >> traitOwner: anObject [

	<generated>
	traitOwner := anObject
]
