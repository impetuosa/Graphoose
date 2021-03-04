Trait {
	#name : #FamixGTEWithCaughtExceptions,
	#instVars : [
		'#caughtExceptions => FMGTEMany type: #FamixGTECaughtException opposite: #definingEntity'
	],
	#category : #'Graphoose-Traits-CaughtException'
}

{ #category : #meta }
FamixGTEWithCaughtExceptions classSide >> annotation [

	<FMClass: #TWithCaughtExceptions super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithCaughtExceptions >> addCaughtException: aCaughtException [
	caughtExceptions add: aCaughtException 

]

{ #category : #accessing }
FamixGTEWithCaughtExceptions >> caughtExceptions [
	"Relation named: #caughtExceptions type: #FamixGTECaughtException opposite: #definingEntity"

	<generated>
	<FMComment: 'The exceptions caught by the method'>
	<derived>
	^ caughtExceptions
]

{ #category : #accessing }
FamixGTEWithCaughtExceptions >> caughtExceptions: anObject [

	<generated>
	caughtExceptions value: anObject
]
