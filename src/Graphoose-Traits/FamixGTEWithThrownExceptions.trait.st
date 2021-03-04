Trait {
	#name : #FamixGTEWithThrownExceptions,
	#instVars : [
		'#thrownExceptions => FMGTEMany type: #FamixGTEThrownException opposite: #definingEntity'
	],
	#category : #'Graphoose-Traits-ThrownException'
}

{ #category : #meta }
FamixGTEWithThrownExceptions classSide >> annotation [

	<FMClass: #TWithThrownExceptions super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithThrownExceptions >> addThrownException: anObject [
	thrownExceptions add: anObject
]

{ #category : #accessing }
FamixGTEWithThrownExceptions >> thrownExceptions [
	"Relation named: #thrownExceptions type: #FamixGTEThrownException opposite: #definingEntity"

	<generated>
	<FMComment: 'The exceptions thrown by the method'>
	<derived>
	^ thrownExceptions
]

{ #category : #accessing }
FamixGTEWithThrownExceptions >> thrownExceptions: anObject [

	<generated>
	thrownExceptions value: anObject
]
