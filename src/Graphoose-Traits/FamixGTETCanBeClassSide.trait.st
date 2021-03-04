Trait {
	#name : #FamixGTETCanBeClassSide,
	#instVars : [
		'#isClassSide => GTEProperty'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETCanBeClassSide classSide >> annotation [

	<FMClass: #TCanBeClassSide super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETCanBeClassSide >> isClassSide [

	<FMProperty: #isClassSide type: #Boolean>
	<generated>
	<FMComment: 'Entity can be declared class side i.e. static'>
	^ isClassSide
]

{ #category : #accessing }
FamixGTETCanBeClassSide >> isClassSide: anObject [
	<generated>
	isClassSide := anObject
]
