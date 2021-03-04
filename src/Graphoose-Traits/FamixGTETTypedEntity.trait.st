Trait {
	#name : #FamixGTETTypedEntity,
	#instVars : [
		'#declaredType => GTEOne type: #FamixGTETType opposite: #typedEntities'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETTypedEntity classSide >> annotation [

	<FMClass: #TTypedEntity super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETTypedEntity >> declaredType [
	"Relation named: #declaredType type: #FamixGTETType opposite: #typedEntities"

	<generated>
	<FMComment: 'Type of the entity, if any'>
	<source>
	^ declaredType
]

{ #category : #accessing }
FamixGTETTypedEntity >> declaredType: anObject [

	<generated>
	declaredType := anObject
]
