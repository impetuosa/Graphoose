Trait {
	#name : #FamixGTETWithInheritances,
	#instVars : [
		'#superInheritances => GTEMany type: #FamixGTETInheritance opposite: #subclass',
		'#subInheritances => GTEMany type: #FamixGTETInheritance opposite: #superclass'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithInheritances classSide >> annotation [

	<FMClass: #TWithInheritances super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithInheritances >> addSubInheritance: anObject [
	<generated>
	^ self subInheritances add: anObject
]

{ #category : #adding }
FamixGTETWithInheritances >> addSuperInheritance: anObject [
	<generated>
	^ self superInheritances add: anObject
]

{ #category : #accessing }
FamixGTETWithInheritances >> subInheritances [
	"Relation named: #subInheritances type: #FamixGTETInheritance opposite: #superclass"

	<generated>
	<FMComment: 'Subinheritance relationships, i.e. known subclasses of this type.'>
	<derived>
	^ subInheritances
]

{ #category : #accessing }
FamixGTETWithInheritances >> subInheritances: anObject [

	<generated>
	subInheritances value: anObject
]

{ #category : #accessing }
FamixGTETWithInheritances >> superInheritances [
	"Relation named: #superInheritances type: #FamixGTETInheritance opposite: #subclass"

	<generated>
	<FMComment: 'Superinheritance relationships, i.e. known superclasses of this type.'>
	<derived>
	^ superInheritances
]

{ #category : #accessing }
FamixGTETWithInheritances >> superInheritances: anObject [

	<generated>
	superInheritances value: anObject
]
