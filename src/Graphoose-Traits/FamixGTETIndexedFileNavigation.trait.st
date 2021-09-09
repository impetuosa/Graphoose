Trait {
	#name : #FamixGTETIndexedFileNavigation,
	#instVars : [
		'#startPos => GTEProperty',
		'#endPos => GTEProperty'
	],
	#traits : 'FamixGTETFileAnchor',
	#classTraits : 'FamixGTETFileAnchor classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETIndexedFileNavigation classSide >> annotation [

	<FMClass: #TIndexedFileNavigation super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETIndexedFileNavigation >> endPos [

	<FMProperty: #endPos type: #Number>
	<generated>
	<FMComment: 'Stop position in the source'>
	^ endPos
]

{ #category : #accessing }
FamixGTETIndexedFileNavigation >> endPos: anObject [
	<generated>
	endPos := anObject
]

{ #category : #accessing }
FamixGTETIndexedFileNavigation >> startPos [

	<FMProperty: #startPos type: #Number>
	<generated>
	<FMComment: 'Start position in the source'>
	^ startPos
]

{ #category : #accessing }
FamixGTETIndexedFileNavigation >> startPos: anObject [
	<generated>
	startPos := anObject
]
