"
This is an exception explicitly thrown by a method.
"
Trait {
	#name : #FamixGTEThrownException,
	#instVars : [
		'#definingEntity => FMGTEOne type: #FamixGTEWithThrownExceptions opposite: #thrownExceptions'
	],
	#category : #'Graphoose-Traits-ThrownException'
}

{ #category : #meta }
FamixGTEThrownException classSide >> annotation [

	<FMClass: #TThrownException super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEThrownException >> definingEntity [
	"Relation named: #definingEntity type: #FamixGTEWithThrownExceptions opposite: #thrownExceptions"

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FamixGTEThrownException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject
]
