Class {
	#name : #FamixGTEJavaContainerEntity,
	#superclass : #FamixGTEJavaNamedEntity,
	#traits : 'FamixGTETWithAnnotationTypes + FamixGTETWithClasses + GTETOODependencyQueries',
	#classTraits : 'FamixGTETWithAnnotationTypes classTrait + FamixGTETWithClasses classTrait + GTETOODependencyQueries classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaContainerEntity class >> annotation [

	<FMClass: #ContainerEntity super: #FamixGTEJavaNamedEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
