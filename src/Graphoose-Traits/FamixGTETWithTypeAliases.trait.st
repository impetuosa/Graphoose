Trait {
	#name : #FamixGTETWithTypeAliases,
	#instVars : [
		'#typeAliases => GTEMany type: #FamixGTETTypeAlias opposite: #aliasedType'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithTypeAliases classSide >> annotation [

	<FMClass: #TWithTypeAliases super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithTypeAliases >> addTypeAliase: anObject [
	<generated>
	^ self typeAliases add: anObject
]

{ #category : #accessing }
FamixGTETWithTypeAliases >> typeAliases [
	"Relation named: #typeAliases type: #FamixGTETTypeAlias opposite: #aliasedType"

	<generated>
	<FMComment: 'Aliases'>
	<derived>
	^ typeAliases
]

{ #category : #accessing }
FamixGTETWithTypeAliases >> typeAliases: anObject [

	<generated>
	typeAliases value: anObject
]
