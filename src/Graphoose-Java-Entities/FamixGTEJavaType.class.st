Class {
	#name : #FamixGTEJavaType,
	#superclass : #FamixGTEJavaContainerEntity,
	#traits : 'FamixGTETParameterizedTypeUser + FamixGTETType + FamixGTETWithMethods + FamixGTETWithTypeAliases',
	#classTraits : 'FamixGTETParameterizedTypeUser classTrait + FamixGTETType classTrait + FamixGTETWithMethods classTrait + FamixGTETWithTypeAliases classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaType class >> annotation [

	<FMClass: #Type super: #FamixGTEJavaContainerEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
