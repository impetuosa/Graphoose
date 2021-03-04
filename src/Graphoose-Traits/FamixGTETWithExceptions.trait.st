Trait {
	#name : #FamixGTETWithExceptions,
	#instVars : [
		'#exceptions => GTEMany type: #FamixGTETException opposite: #exceptionClass'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithExceptions classSide >> annotation [

	<FMClass: #TWithExceptions super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithExceptions >> addException: anObject [
	<generated>
	^ self exceptions add: anObject
]

{ #category : #accessing }
FamixGTETWithExceptions >> exceptions [
	"Relation named: #exceptions type: #FamixGTETException opposite: #exceptionClass"

	<generated>
	<FMComment: 'Exceptions which class is myself.'>
	<derived>
	^ exceptions
]

{ #category : #accessing }
FamixGTETWithExceptions >> exceptions: anObject [

	<generated>
	exceptions value: anObject
]
