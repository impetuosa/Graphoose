Trait {
	#name : #FamixGTETHasModifiers,
	#instVars : [
		'#modifiers => GTEProperty'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETHasModifiers classSide >> annotation [

	<FMClass: #THasModifiers super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETHasModifiers >> modifiers [

	<FMProperty: #modifiers type: #String>
	<generated>
	<multivalued>
	<FMComment: 'Generic container for language dependent modifiers.'>
	^ modifiers
]

{ #category : #accessing }
FamixGTETHasModifiers >> modifiers: anObject [
	<generated>
	modifiers := anObject
]
