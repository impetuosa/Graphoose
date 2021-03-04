Trait {
	#name : #FamixGTETWithMethods,
	#instVars : [
		'#methods => GTEMany type: #FamixGTETMethod opposite: #parentType'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithMethods classSide >> annotation [

	<FMClass: #TWithMethods super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithMethods >> addMethod: anObject [
	<generated>
	^ self methods add: anObject
]

{ #category : #accessing }
FamixGTETWithMethods >> methods [
	"Relation named: #methods type: #FamixGTETMethod opposite: #parentType"

	<generated>
	<FMComment: 'Methods declared by this type.'>
	<derived>
	^ methods
]

{ #category : #accessing }
FamixGTETWithMethods >> methods: anObject [

	<generated>
	methods value: anObject
]
