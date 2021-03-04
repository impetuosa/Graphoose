Trait {
	#name : #FamixGTETCanBeAbstract,
	#instVars : [
		'#isAbstract => GTEProperty'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETCanBeAbstract classSide >> annotation [

	<FMClass: #TCanBeAbstract super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETCanBeAbstract >> isAbstract [

	<FMProperty: #isAbstract type: #Boolean>
	<generated>
	<FMComment: 'Entity can be declared abstract'>
	^ isAbstract
]

{ #category : #accessing }
FamixGTETCanBeAbstract >> isAbstract: anObject [
	<generated>
	isAbstract := anObject
]
