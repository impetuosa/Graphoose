"
This is an exception explicitly thrown by a method.
"
Trait {
	#name : #FamixGTETThrownException,
	#instVars : [
		'#definingEntity => GTEOne type: #FamixGTETWithThrownExceptions opposite: #thrownExceptions'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETThrownException classSide >> annotation [

	<FMClass: #TThrownException super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETThrownException >> definingEntity [
	"Relation named: #definingEntity type: #FamixGTETWithThrownExceptions opposite: #thrownExceptions"

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FamixGTETThrownException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject
]
