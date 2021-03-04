"
An immediate source is the source code of the entity stored directly into its sourceAnchor instead of accessing it (for example in a file) through its sourceAnchor
"
Trait {
	#name : #FamixGTETHasImmediateSource,
	#instVars : [
		'#source => GTEProperty'
	],
	#traits : 'FamixGTETSourceAnchor',
	#classTraits : 'FamixGTETSourceAnchor classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETHasImmediateSource classSide >> annotation [

	<FMClass: #THasImmediateSource super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETHasImmediateSource >> source [

	<FMProperty: #source type: #String>
	<generated>
	<FMComment: 'Actual source code of the source entity'>
	^ source
]

{ #category : #accessing }
FamixGTETHasImmediateSource >> source: anObject [
	<generated>
	source := anObject
]
