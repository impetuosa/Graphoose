"
FAMIXType is a generic class representing a type. It has several specializations for specific kinds of types, the typical one being FAMIXClass.
A type is defined in a container (instance of FAMIXContainer). 
The container is typically a namespace (instance of FAMIXNamespace), but may also be a class (in the case of nested classes), or a method (in the case of anonymous classes).

A type can have multiple subtypes or supertypes. These are modelled by means of FAMIXInheritance instances.
"
Trait {
	#name : #FamixGTETType,
	#instVars : [
		'#typeContainer => GTEOne type: #FamixGTETWithTypes opposite: #types',
		'#typedEntities => GTEMany type: #FamixGTETTypedEntity opposite: #declaredType'
	],
	#traits : 'FamixGTETNamedEntity + FamixGTETReferenceable',
	#classTraits : 'FamixGTETNamedEntity classTrait + FamixGTETReferenceable classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETType classSide >> annotation [

	<FMClass: #TType super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTETType classSide >> annotationFamixGTETypeGroup [
	<generated>
	<mooseGroup>
	^ FamixGTETypeGroup
]

{ #category : #adding }
FamixGTETType >> addTypedEntity: anObject [
	<generated>
	^ self typedEntities add: anObject
]

{ #category : #testing }
FamixGTETType >> isType [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTETType >> typeContainer [
	"Relation named: #typeContainer type: #FamixGTETWithTypes opposite: #types"

	<generated>
	<FMComment: 'Container entity to which this type belongs to. Container is a namespace, not a package (Smalltalk).'>
	<container>
	^ typeContainer
]

{ #category : #accessing }
FamixGTETType >> typeContainer: anObject [

	<generated>
	typeContainer := anObject
]

{ #category : #navigation }
FamixGTETType >> typeContainerGroup [
	<generated>
	<navigation: 'TypeContainer'>
	^ MooseSpecializedGroup with: self typeContainer
]

{ #category : #accessing }
FamixGTETType >> typedEntities [
	"Relation named: #typedEntities type: #FamixGTETTypedEntity opposite: #declaredType"

	<generated>
	<FMComment: 'Entities that have this type as declaredType'>
	<derived>
	<target>
	^ typedEntities
]

{ #category : #accessing }
FamixGTETType >> typedEntities: anObject [

	<generated>
	typedEntities value: anObject
]
