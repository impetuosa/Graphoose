Trait {
	#name : #FamixGTETWithCaughtExceptions,
	#instVars : [
		'#caughtExceptions => GTEMany type: #FamixGTETCaughtException opposite: #definingEntity'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithCaughtExceptions classSide >> annotation [

	<FMClass: #TWithCaughtExceptions super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithCaughtExceptions >> addCaughtException: anObject [
	<generated>
	^ self caughtExceptions add: anObject
]

{ #category : #accessing }
FamixGTETWithCaughtExceptions >> caughtExceptions [
	"Relation named: #caughtExceptions type: #FamixGTETCaughtException opposite: #definingEntity"

	<generated>
	<FMComment: 'The exceptions caught by the method'>
	<derived>
	^ caughtExceptions
]

{ #category : #accessing }
FamixGTETWithCaughtExceptions >> caughtExceptions: anObject [

	<generated>
	caughtExceptions value: anObject
]
