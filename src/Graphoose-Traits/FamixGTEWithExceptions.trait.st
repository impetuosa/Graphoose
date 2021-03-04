Trait {
	#name : #FamixGTEWithExceptions,
	#instVars : [
		'#exceptions => FMGTEMany type: #FamixGTEException opposite: #exceptionClass'
	],
	#category : #'Graphoose-Traits-Exception'
}

{ #category : #meta }
FamixGTEWithExceptions classSide >> annotation [

	<FMClass: #TWithExceptions super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithExceptions >> addException: anObject [
	exceptions add: anObject

]

{ #category : #accessing }
FamixGTEWithExceptions >> exceptions [
	"Relation named: #exceptions type: #FamixGTEException opposite: #exceptionClass"

	<generated>
	<FMComment: 'Exceptions which class is myself.'>
	<derived>
	^ exceptions
]

{ #category : #accessing }
FamixGTEWithExceptions >> exceptions: anObject [

	<generated>
	exceptions value: anObject
]
