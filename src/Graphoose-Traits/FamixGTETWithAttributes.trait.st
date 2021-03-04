Trait {
	#name : #FamixGTETWithAttributes,
	#instVars : [
		'#attributes => GTEMany type: #FamixGTETAttribute opposite: #parentType'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithAttributes classSide >> annotation [

	<FMClass: #TWithAttributes super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithAttributes >> addAttribute: anObject [
	<generated>
	^ self attributes add: anObject
]

{ #category : #accessing }
FamixGTETWithAttributes >> attributes [
	"Relation named: #attributes type: #FamixGTETAttribute opposite: #parentType"

	<generated>
	<FMComment: 'List of attributes declared by this type.'>
	<derived>
	^ attributes
]

{ #category : #accessing }
FamixGTETWithAttributes >> attributes: anObject [

	<generated>
	attributes value: anObject
]
