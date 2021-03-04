Trait {
	#name : #FamixGTEWithTraits,
	#instVars : [
		'#traits => FMGTEMany type: #FamixGTETrait opposite: #traitOwner'
	],
	#category : #'Graphoose-Traits-Trait'
}

{ #category : #meta }
FamixGTEWithTraits classSide >> annotation [

	<FMClass: #TWithTraits super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithTraits >> addTrait: anObject [
	traits add: anObject

]

{ #category : #accessing }
FamixGTEWithTraits >> traits [
	"Relation named: #traits type: #FamixGTETrait opposite: #traitOwner"

	<generated>
	<derived>
	^ traits
]

{ #category : #accessing }
FamixGTEWithTraits >> traits: anObject [

	<generated>
	traits value: anObject
]
