"
This is an exception that is explicitly handled by a method. For example, in Java it is an exception that appears in a catch statement.
"
Trait {
	#name : #FamixGTETCaughtException,
	#instVars : [
		'#definingEntity => GTEOne type: #FamixGTETWithCaughtExceptions opposite: #caughtExceptions'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETCaughtException classSide >> annotation [

	<FMClass: #TCaughtException super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETCaughtException >> definingEntity [
	"Relation named: #definingEntity type: #FamixGTETWithCaughtExceptions opposite: #caughtExceptions"

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FamixGTETCaughtException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject
]
