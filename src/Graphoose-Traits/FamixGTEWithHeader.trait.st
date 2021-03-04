Trait {
	#name : #FamixGTEWithHeader,
	#instVars : [
		'#header => FMGTEOne type: #FamixGTEHeader opposite: #headerOwner'
	],
	#category : #'Graphoose-Traits-Header'
}

{ #category : #meta }
FamixGTEWithHeader classSide >> annotation [

	<FMClass: #TWithHeader super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithHeader >> header [
	"Relation named: #header type: #FamixGTEHeader opposite: #headerOwner"

	<generated>
	<FMComment: 'The header file that defines this module'>
	<derived>
	^ header
]

{ #category : #accessing }
FamixGTEWithHeader >> header: anObject [

	<generated>
	header := anObject
]
