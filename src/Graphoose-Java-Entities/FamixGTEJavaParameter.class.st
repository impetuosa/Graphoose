Class {
	#name : #FamixGTEJavaParameter,
	#superclass : #FamixGTEJavaNamedEntity,
	#traits : 'FamixGTETCanBeFinal + FamixGTETParameter',
	#classTraits : 'FamixGTETCanBeFinal classTrait + FamixGTETParameter classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaParameter class >> annotation [

	<FMClass: #Parameter super: #FamixGTEJavaNamedEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
