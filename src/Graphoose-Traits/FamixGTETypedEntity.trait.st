Trait {
	#name : #FamixGTETypedEntity,
	#instVars : [
		'#declaredType => FMGTEOne type: #FamixGTEType opposite: #typedEntities'
	],
	#category : #'Graphoose-Traits-Type'
}

{ #category : #meta }
FamixGTETypedEntity classSide >> annotation [

	<FMClass: #TTypedEntity super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETypedEntity >> declaredType [
	"Relation named: #declaredType type: #FamixGTEType opposite: #typedEntities"

	<generated>
	<FMComment: 'Type of the entity, if any'>
	<source>
	^ declaredType
]

{ #category : #accessing }
FamixGTETypedEntity >> declaredType: anObject [

	<generated>
	declaredType := anObject
]

{ #category : #'moose query' }
FamixGTETypedEntity >> entityHasOutgoingTypeDeclarations [
	^ self hasDeclaredType
]

{ #category : #testing }
FamixGTETypedEntity >> hasDeclaredType [
	^ self declaredType isNotNil
]

{ #category : #'moose query' }
FamixGTETypedEntity >> outgoingTypeDeclarations [
	^ self declaredType ifNil: [ {} ] ifNotNil: [ :dt | {(MQNavigationDependencyAssociation newFrom: self to: dt)} ]
]
