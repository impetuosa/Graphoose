Class {
	#name : #FamixGTEJavaPackage,
	#superclass : #FamixGTEJavaContainerEntity,
	#traits : 'FamixGTETPackage + FamixGTETWithGlobalVariables',
	#classTraits : 'FamixGTETPackage classTrait + FamixGTETWithGlobalVariables classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaPackage class >> annotation [

	<FMClass: #Package super: #FamixGTEJavaContainerEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
