Trait {
	#name : #FamixGTETWithTypes,
	#instVars : [
		'#types => GTEMany type: #FamixGTETType opposite: #typeContainer'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithTypes classSide >> annotation [

	<FMClass: #TWithTypes super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithTypes >> addType: anObject [
	<generated>
	^ self types add: anObject
]

{ #category : #accessing }
FamixGTETWithTypes >> types [
	"Relation named: #types type: #FamixGTETType opposite: #typeContainer"

	<generated>
	<FMComment: 'Types contained (declared) in this entity, if any.
#types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.'>
	<derived>
	^ types
]

{ #category : #accessing }
FamixGTETWithTypes >> types: anObject [

	<generated>
	types value: anObject
]
