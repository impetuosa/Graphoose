Trait {
	#name : #FamixGTETCanBeFinal,
	#instVars : [
		'#isFinal => GTEProperty'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETCanBeFinal classSide >> annotation [

	<FMClass: #TCanBeFinal super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETCanBeFinal >> isFinal [

	<FMProperty: #isFinal type: #Boolean>
	<generated>
	<FMComment: 'Entity can be declared final'>
	^ isFinal
]

{ #category : #accessing }
FamixGTETCanBeFinal >> isFinal: anObject [
	<generated>
	isFinal := anObject
]
