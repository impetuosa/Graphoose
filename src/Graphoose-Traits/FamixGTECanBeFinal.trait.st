Trait {
	#name : #FamixGTECanBeFinal,
	#instVars : [
		'#isFinal => FMGTEProperty'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTECanBeFinal classSide >> annotation [

	<FMClass: #TCanBeFinal super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTECanBeFinal >> isFinal [

	<FMGTEProperty: #isFinal type: #Boolean>
	<generated>
	<FMComment: 'Entity can be declared final'>
	^ isFinal
]

{ #category : #accessing }
FamixGTECanBeFinal >> isFinal: anObject [
	<generated>
	isFinal := anObject
]
