Trait {
	#name : #FamixGTECanBeClassSide,
	#instVars : [
		'#isClassSide => FMGTEProperty'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTECanBeClassSide classSide >> annotation [

	<FMClass: #TCanBeClassSide super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTECanBeClassSide >> isClassSide [

	<FMGTEProperty: #isClassSide type: #Boolean>
	<generated>
	<FMComment: 'Entity can be declared class side i.e. static'>
	^ isClassSide
]

{ #category : #accessing }
FamixGTECanBeClassSide >> isClassSide: anObject [
	<generated>
	isClassSide := anObject
]
