"
This is an exception explicitly declared as being thrown by a method.
"
Trait {
	#name : #FamixGTEDeclaredException,
	#instVars : [
		'#definingEntity => FMGTEOne type: #FamixGTEWithDeclaredExceptions opposite: #declaredExceptions'
	],
	#category : #'Graphoose-Traits-DeclaredException'
}

{ #category : #meta }
FamixGTEDeclaredException classSide >> annotation [

	<FMClass: #TDeclaredException super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEDeclaredException >> definingEntity [
	"Relation named: #definingEntity type: #FamixGTEWithDeclaredExceptions opposite: #declaredExceptions"

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FamixGTEDeclaredException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject
]
