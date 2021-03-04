"
FAMIXNamespace represents a namespace from the source language. Namespaces have semantic meaning in the language so they influence the unique name of the entity.

A namespace denotes an entity that has meaning from a language point of view. For example, in C++, there exist a concept with the same name that has no other responsibility beside providing a lexical scope for the contained classes and funcions.

When an entity is placed inside a namespace, the fully qualified name (mooseName) is affected.
"
Trait {
	#name : #FamixGTENamespace,
	#traits : '(FamixGTENamedEntity + TOODependencyQueries withPrecedenceOf: TOODependencyQueries)',
	#classTraits : '(FamixGTENamedEntity classTrait + TOODependencyQueries classTrait withPrecedenceOf: TOODependencyQueries classTrait)',
	#category : #'Graphoose-Traits-Named'
}

{ #category : #meta }
FamixGTENamespace classSide >> annotation [

	<FMClass: #TNamespace super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTENamespace classSide >> annotationFamixNamespaceGroup [
	<generated>
	<mooseGroup>
	^ FamixNamespaceGroup
]

{ #category : #testing }
FamixGTENamespace >> isNamespace [

	<generated>
	^ true
]
