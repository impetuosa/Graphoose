Trait {
	#name : #FamixGTETHasVisibility,
	#instVars : [
		'#visibility => GTEProperty'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETHasVisibility classSide >> annotation [

	<FMClass: #THasVisibility super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETHasVisibility >> visibility [

	<FMProperty: #visibility type: #String>
	<generated>
	<FMComment: 'Visibility of the entity'>
	^ visibility
]

{ #category : #accessing }
FamixGTETHasVisibility >> visibility: anObject [
	<generated>
	visibility := anObject
]
