Trait {
	#name : #FamixGTETFileNavigation,
	#instVars : [
		'#startLine => GTEProperty',
		'#endLine => GTEProperty',
		'#startColumn => GTEProperty',
		'#endColumn => GTEProperty'
	],
	#traits : 'FamixGTETFileAnchor',
	#classTraits : 'FamixGTETFileAnchor classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETFileNavigation classSide >> annotation [

	<FMClass: #TFileNavigation super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETFileNavigation >> endColumn [

	<FMProperty: #endColumn type: #Number>
	<generated>
	<FMComment: 'Number of the end column'>
	^ endColumn
]

{ #category : #accessing }
FamixGTETFileNavigation >> endColumn: anObject [
	<generated>
	endColumn := anObject
]

{ #category : #accessing }
FamixGTETFileNavigation >> endLine [

	<FMProperty: #endLine type: #Number>
	<generated>
	<FMComment: 'Number of the end line'>
	^ endLine
]

{ #category : #accessing }
FamixGTETFileNavigation >> endLine: anObject [
	<generated>
	endLine := anObject
]

{ #category : #accessing }
FamixGTETFileNavigation >> startColumn [

	<FMProperty: #startColumn type: #Number>
	<generated>
	<FMComment: 'Number of the start column'>
	^ startColumn
]

{ #category : #accessing }
FamixGTETFileNavigation >> startColumn: anObject [
	<generated>
	startColumn := anObject
]

{ #category : #accessing }
FamixGTETFileNavigation >> startLine [

	<FMProperty: #startLine type: #Number>
	<generated>
	<FMComment: 'Number of the start line'>
	^ startLine
]

{ #category : #accessing }
FamixGTETFileNavigation >> startLine: anObject [
	<generated>
	startLine := anObject
]
