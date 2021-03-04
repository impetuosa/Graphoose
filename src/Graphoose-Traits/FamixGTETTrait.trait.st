"
FAMIXTrait models a trait as it can be found in Pharo or PHP.
"
Trait {
	#name : #FamixGTETTrait,
	#instVars : [
		'#traitOwner => GTEOne type: #FamixGTETWithTraits opposite: #traits',
		'#incomingTraitUsages => GTEMany type: #FamixGTETTraitUsage opposite: #trait'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETTrait classSide >> annotation [

	<FMClass: #TTrait super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETTrait >> addIncomingTraitUsage: anObject [
	<generated>
	^ self incomingTraitUsages add: anObject
]

{ #category : #accessing }
FamixGTETTrait >> incomingTraitUsages [
	"Relation named: #incomingTraitUsages type: #FamixGTETTraitUsage opposite: #trait"

	<generated>
	<derived>
	^ incomingTraitUsages
]

{ #category : #accessing }
FamixGTETTrait >> incomingTraitUsages: anObject [

	<generated>
	incomingTraitUsages value: anObject
]

{ #category : #accessing }
FamixGTETTrait >> traitOwner [
	"Relation named: #traitOwner type: #FamixGTETWithTraits opposite: #traits"

	<generated>
	^ traitOwner
]

{ #category : #accessing }
FamixGTETTrait >> traitOwner: anObject [

	<generated>
	traitOwner := anObject
]
