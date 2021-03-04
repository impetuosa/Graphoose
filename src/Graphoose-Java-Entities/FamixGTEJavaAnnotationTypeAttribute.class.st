Class {
	#name : #FamixGTEJavaAnnotationTypeAttribute,
	#superclass : #FamixGTEJavaNamedEntity,
	#traits : 'FamixGTETAnnotationTypeAttribute + FamixGTETTypedAnnotationInstanceAttribute',
	#classTraits : 'FamixGTETAnnotationTypeAttribute classTrait + FamixGTETTypedAnnotationInstanceAttribute classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaAnnotationTypeAttribute class >> annotation [

	<FMClass: #AnnotationTypeAttribute super: #FamixGTEJavaNamedEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
