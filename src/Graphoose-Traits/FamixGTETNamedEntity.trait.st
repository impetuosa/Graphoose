Trait {
	#name : #FamixGTETNamedEntity,
	#instVars : [
		'#name => GTEProperty'
	],
	#traits : 'FamixGTETSourceEntity + GTETEntityMetaLevelDependency',
	#classTraits : 'FamixGTETSourceEntity classTrait + GTETEntityMetaLevelDependency classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETNamedEntity classSide >> annotation [

	<FMClass: #TNamedEntity super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETNamedEntity >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #accessing }
FamixGTETNamedEntity >> name: anObject [
	<generated>
	name := anObject
]
