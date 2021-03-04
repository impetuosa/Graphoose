"
This is the abstract representation of an Exception. It is specific to Java. It points to an exceptionClass. The class of a FAMIXException is a normal FAMIXClass.
"
Trait {
	#name : #FamixGTEException,
	#instVars : [
		'#exceptionClass => FMGTEOne type: #FamixGTEWithExceptions opposite: #exceptions'
	],
	#category : #'Graphoose-Traits-Exception'
}

{ #category : #meta }
FamixGTEException classSide >> annotation [

	<FMClass: #TException super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEException >> exceptionClass [
	"Relation named: #exceptionClass type: #FamixGTEWithExceptions opposite: #exceptions"

	<generated>
	<FMComment: 'Class to which the exception points. It is specific to Java'>
	^ exceptionClass
]

{ #category : #accessing }
FamixGTEException >> exceptionClass: anObject [

	<generated>
	exceptionClass := anObject
]
