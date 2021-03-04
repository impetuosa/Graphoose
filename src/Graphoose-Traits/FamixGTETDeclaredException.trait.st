"
This is an exception explicitly declared as being thrown by a method.
"
Trait {
	#name : #FamixGTETDeclaredException,
	#instVars : [
		'#definingEntity => GTEOne type: #FamixGTETWithDeclaredExceptions opposite: #declaredExceptions'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETDeclaredException classSide >> annotation [

	<FMClass: #TDeclaredException super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETDeclaredException >> definingEntity [
	"Relation named: #definingEntity type: #FamixGTETWithDeclaredExceptions opposite: #declaredExceptions"

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FamixGTETDeclaredException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject
]
