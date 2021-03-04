Trait {
	#name : #FamixGTEWithTypeAliases,
	#instVars : [
		'#typeAliases => FMGTEMany type: #FamixGTETypeAlias opposite: #aliasedType'
	],
	#category : #'Graphoose-Traits-TypeAlias'
}

{ #category : #meta }
FamixGTEWithTypeAliases classSide >> annotation [

	<FMClass: #TWithTypeAliases super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithTypeAliases >> addTypeAlias: anObject [
	typeAliases add: anObject

]

{ #category : #adding }
FamixGTEWithTypeAliases >> addTypeAliase: anObject [
	<generated>
	^ self typeAliases add: anObject
]

{ #category : #accessing }
FamixGTEWithTypeAliases >> allTypeAliases [
	| all |
	all := OrderedCollection withAll: self typeAliases.
	self typeAliases do: [:each | all addAll: each allTypeAliases ].
	^ all
]

{ #category : #accessing }
FamixGTEWithTypeAliases >> typeAliases [
	"Relation named: #typeAliases type: #FamixGTETypeAlias opposite: #aliasedType"

	<generated>
	<FMComment: 'Aliases'>
	<derived>
	^ typeAliases
]

{ #category : #accessing }
FamixGTEWithTypeAliases >> typeAliases: anObject [

	<generated>
	typeAliases value: anObject
]
