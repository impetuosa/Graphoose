Class {
	#name : #FamixGTEJavaAnnotationType,
	#superclass : #FamixGTEJavaType,
	#traits : 'FamixGTETAnnotationType + FamixGTETWithAttributes + FamixGTETWithInheritances',
	#classTraits : 'FamixGTETAnnotationType classTrait + FamixGTETWithAttributes classTrait + FamixGTETWithInheritances classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaAnnotationType class >> annotation [

	<FMClass: #AnnotationType super: #FamixGTEJavaType>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
