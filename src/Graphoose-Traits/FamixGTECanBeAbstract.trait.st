Trait {
	#name : #FamixGTECanBeAbstract,
	#instVars : [
		'#isAbstract => FMGTEProperty'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTECanBeAbstract classSide >> annotation [

	<FMClass: #TCanBeAbstract super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTECanBeAbstract >> isAbstract [

	<FMGTEProperty: #isAbstract type: #Boolean>
	<generated>
	<FMComment: 'Entity can be declared abstract'>
	^ isAbstract
]

{ #category : #accessing }
FamixGTECanBeAbstract >> isAbstract: anObject [
	<generated>
	isAbstract := anObject
]
