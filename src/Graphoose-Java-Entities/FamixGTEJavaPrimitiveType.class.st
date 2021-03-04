Class {
	#name : #FamixGTEJavaPrimitiveType,
	#superclass : #FamixGTEJavaType,
	#traits : 'FamixGTETPrimitiveType',
	#classTraits : 'FamixGTETPrimitiveType classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaPrimitiveType class >> annotation [

	<FMClass: #PrimitiveType super: #FamixGTEJavaType>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTEJavaPrimitiveType >> isPrimitiveType [

	<generated>
	^ true
]
