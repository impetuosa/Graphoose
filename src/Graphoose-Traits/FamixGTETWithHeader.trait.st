Trait {
	#name : #FamixGTETWithHeader,
	#instVars : [
		'#header => GTEOne type: #FamixGTETHeader opposite: #headerOwner'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithHeader classSide >> annotation [

	<FMClass: #TWithHeader super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETWithHeader >> header [
	"Relation named: #header type: #FamixGTETHeader opposite: #headerOwner"

	<generated>
	<FMComment: 'The header file that defines this module'>
	<derived>
	^ header
]

{ #category : #accessing }
FamixGTETWithHeader >> header: anObject [

	<generated>
	header := anObject
]
