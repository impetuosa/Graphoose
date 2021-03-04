"
This is an exception that is explicitly handled by a method. For example, in Java it is an exception that appears in a catch statement.
"
Trait {
	#name : #FamixGTECaughtException,
	#instVars : [
		'#definingEntity => FMGTEOne type: #FamixGTEWithCaughtExceptions opposite: #caughtExceptions'
	],
	#category : #'Graphoose-Traits-CaughtException'
}

{ #category : #meta }
FamixGTECaughtException classSide >> annotation [

	<FMClass: #TCaughtException super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTECaughtException >> definingEntity [
	"Relation named: #definingEntity type: #FamixGTEWithCaughtExceptions opposite: #caughtExceptions"

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FamixGTECaughtException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject
]
