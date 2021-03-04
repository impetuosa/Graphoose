Trait {
	#name : #FamixGTETWithDeclaredExceptions,
	#instVars : [
		'#declaredExceptions => GTEMany type: #FamixGTETDeclaredException opposite: #definingEntity'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithDeclaredExceptions classSide >> annotation [

	<FMClass: #TWithDeclaredExceptions super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithDeclaredExceptions >> addDeclaredException: anObject [
	<generated>
	^ self declaredExceptions add: anObject
]

{ #category : #accessing }
FamixGTETWithDeclaredExceptions >> declaredExceptions [
	"Relation named: #declaredExceptions type: #FamixGTETDeclaredException opposite: #definingEntity"

	<generated>
	<FMComment: 'The exceptions declared by the method'>
	<derived>
	^ declaredExceptions
]

{ #category : #accessing }
FamixGTETWithDeclaredExceptions >> declaredExceptions: anObject [

	<generated>
	declaredExceptions value: anObject
]
