Class {
	#name : #FamixGTEJavaParameterizedType,
	#superclass : #FamixGTEJavaType,
	#traits : 'FamixGTETParameterizedType + FamixGTETWithInheritances + FamixGTETWithParameterizedTypeUsers',
	#classTraits : 'FamixGTETParameterizedType classTrait + FamixGTETWithInheritances classTrait + FamixGTETWithParameterizedTypeUsers classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaParameterizedType class >> annotation [

	<FMClass: #ParameterizedType super: #FamixGTEJavaType>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
