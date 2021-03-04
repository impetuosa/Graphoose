Trait {
	#name : #FamixGTEWithDeclaredExceptions,
	#instVars : [
		'#declaredExceptions => FMGTEMany type: #FamixGTEDeclaredException opposite: #definingEntity'
	],
	#category : #'Graphoose-Traits-DeclaredException'
}

{ #category : #meta }
FamixGTEWithDeclaredExceptions classSide >> annotation [

	<FMClass: #TWithDeclaredExceptions super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithDeclaredExceptions >> addDeclaredException: aDeclaredException [
	declaredExceptions add: aDeclaredException
]

{ #category : #accessing }
FamixGTEWithDeclaredExceptions >> declaredExceptions [
	"Relation named: #declaredExceptions type: #FamixGTEDeclaredException opposite: #definingEntity"

	<generated>
	<FMComment: 'The exceptions declared by the method'>
	<derived>
	^ declaredExceptions
]

{ #category : #accessing }
FamixGTEWithDeclaredExceptions >> declaredExceptions: anObject [

	<generated>
	declaredExceptions value: anObject
]
