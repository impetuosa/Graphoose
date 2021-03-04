Trait {
	#name : #FamixGTENamedEntity,
	#instVars : [
		'#name => FMGTEProperty'
	],
	#traits : 'FamixGTESourceEntity + TEntityMetaLevelDependency',
	#classTraits : 'FamixGTESourceEntity classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Graphoose-Traits-Named'
}

{ #category : #meta }
FamixGTENamedEntity classSide >> annotation [

	<FMClass: #TNamedEntity super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #'instance creation' }
FamixGTENamedEntity classSide >> named: aString [
	^ self new
		name: aString;
		yourself
]

{ #category : #'instance creation' }
FamixGTENamedEntity classSide >> named: aString model: aMooseModel [
	^ self new
		mooseModel: aMooseModel;
		name: aString;
		yourself
]

{ #category : #testing }
FamixGTENamedEntity >> hasUniqueMooseNameInModel [
	" all subclasses should call the method: 'resetMooseName' if a change causes the moosename to change "
	^ true
]

{ #category : #printing }
FamixGTENamedEntity >> mooseNameOn: stream [
	self name ifNotNil: [ :n | stream nextPutAll: n ]
]

{ #category : #accessing }
FamixGTENamedEntity >> name [

	<FMGTEProperty: #name type: #String>
	<generated>
	<FMComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #accessing }
FamixGTENamedEntity >> name: anObject [

	name := anObject.
	self resetMooseName

]

{ #category : #accessing }
FamixGTENamedEntity >> resetMooseName [
	(super resetMooseName and: [ self class withAllSuperclasses anySatisfy: [ :class | class isComposedBy: TEntityMetaLevelDependency ] ]) ifTrue: [ self children do: [ :entity | entity resetMooseName ] ].
	^ false
]
