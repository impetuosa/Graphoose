Class {
	#name : #FamixGTEJavaAnnotationInstanceAttribute,
	#superclass : #FamixGTEJavaSourcedEntity,
	#traits : 'FamixGTETAnnotationInstanceAttribute + FamixGTETTypedAnnotationInstanceAttribute',
	#classTraits : 'FamixGTETAnnotationInstanceAttribute classTrait + FamixGTETTypedAnnotationInstanceAttribute classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaAnnotationInstanceAttribute class >> annotation [

	<FMClass: #AnnotationInstanceAttribute super: #FamixGTEJavaSourcedEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
