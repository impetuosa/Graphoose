"
This is the abstract representation of an Exception. It is specific to Java. It points to an exceptionClass. The class of a FAMIXException is a normal FAMIXClass.
"
Trait {
	#name : #FamixGTETException,
	#instVars : [
		'#exceptionClass => GTEOne type: #FamixGTETWithExceptions opposite: #exceptions'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETException classSide >> annotation [

	<FMClass: #TException super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETException >> exceptionClass [
	"Relation named: #exceptionClass type: #FamixGTETWithExceptions opposite: #exceptions"

	<generated>
	<FMComment: 'Class to which the exception points. It is specific to Java'>
	^ exceptionClass
]

{ #category : #accessing }
FamixGTETException >> exceptionClass: anObject [

	<generated>
	exceptionClass := anObject
]
