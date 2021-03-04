Trait {
	#name : #FamixGTETWithThrownExceptions,
	#instVars : [
		'#thrownExceptions => GTEMany type: #FamixGTETThrownException opposite: #definingEntity'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithThrownExceptions classSide >> annotation [

	<FMClass: #TWithThrownExceptions super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithThrownExceptions >> addThrownException: anObject [
	<generated>
	^ self thrownExceptions add: anObject
]

{ #category : #accessing }
FamixGTETWithThrownExceptions >> thrownExceptions [
	"Relation named: #thrownExceptions type: #FamixGTETThrownException opposite: #definingEntity"

	<generated>
	<FMComment: 'The exceptions thrown by the method'>
	<derived>
	^ thrownExceptions
]

{ #category : #accessing }
FamixGTETWithThrownExceptions >> thrownExceptions: anObject [

	<generated>
	thrownExceptions value: anObject
]
