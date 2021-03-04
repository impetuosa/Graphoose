Class {
	#name : #FamixGTEJavaAnnotationInstance,
	#superclass : #FamixGTEJavaSourcedEntity,
	#traits : 'FamixGTETAnnotationInstance + FamixGTETTypedAnnotationInstance + FamixGTETWithAnnotationInstanceAttributes',
	#classTraits : 'FamixGTETAnnotationInstance classTrait + FamixGTETTypedAnnotationInstance classTrait + FamixGTETWithAnnotationInstanceAttributes classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaAnnotationInstance class >> annotation [

	<FMClass: #AnnotationInstance super: #FamixGTEJavaSourcedEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
