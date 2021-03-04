"
FAMIXClass represents an entity which can build new instances. A FAMIXClass is a FAMIXType, therefore it is involved in super/sub types relationships (depending on the language) and it holds attributes, methods.

FAMIX does not model explicitly interfaces, but a FAMIXClass can represent a Java interface by setting the isInterface property.

A class is typically scoped in a namespace. To model nested or anonymous classes, extractors can set the container of classes to classes or methods, respectively.
"
Trait {
	#name : #FamixGTETClass,
	#traits : 'FamixGTETInvocationsReceiver + FamixGTETPackageable + FamixGTETType + FamixGTETWithAttributes + FamixGTETWithComments + FamixGTETWithInheritances + FamixGTETWithMethods + GTETOODependencyQueries',
	#classTraits : 'FamixGTETInvocationsReceiver classTrait + FamixGTETPackageable classTrait + FamixGTETType classTrait + FamixGTETWithAttributes classTrait + FamixGTETWithComments classTrait + FamixGTETWithInheritances classTrait + FamixGTETWithMethods classTrait + GTETOODependencyQueries classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETClass classSide >> annotation [

	<FMClass: #TClass super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTETClass classSide >> annotationFamixGTEClassGroup [
	<generated>
	<mooseGroup>
	^ FamixGTEClassGroup
]

{ #category : #testing }
FamixGTETClass >> isClass [

	<generated>
	^ true
]
