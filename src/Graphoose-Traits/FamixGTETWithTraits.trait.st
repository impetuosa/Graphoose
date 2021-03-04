Trait {
	#name : #FamixGTETWithTraits,
	#instVars : [
		'#traits => GTEMany type: #FamixGTETTrait opposite: #traitOwner'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithTraits classSide >> annotation [

	<FMClass: #TWithTraits super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithTraits >> addTrait: anObject [
	<generated>
	^ self traits add: anObject
]

{ #category : #accessing }
FamixGTETWithTraits >> traits [
	"Relation named: #traits type: #FamixGTETTrait opposite: #traitOwner"

	<generated>
	<derived>
	^ traits
]

{ #category : #accessing }
FamixGTETWithTraits >> traits: anObject [

	<generated>
	traits value: anObject
]
