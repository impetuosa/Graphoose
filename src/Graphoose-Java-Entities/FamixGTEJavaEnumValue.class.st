Class {
	#name : #FamixGTEJavaEnumValue,
	#superclass : #FamixGTEJavaNamedEntity,
	#traits : 'FamixGTETEnumValue + FamixGTETStructuralEntity',
	#classTraits : 'FamixGTETEnumValue classTrait + FamixGTETStructuralEntity classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaEnumValue class >> annotation [

	<FMClass: #EnumValue super: #FamixGTEJavaNamedEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
