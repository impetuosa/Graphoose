Class {
	#name : #FamixGTEJavaEnum,
	#superclass : #FamixGTEJavaType,
	#traits : 'FamixGTETEnum + FamixGTETHasVisibility + FamixGTETWithAttributes + FamixGTETWithInheritances + FamixGTETWithMethods',
	#classTraits : 'FamixGTETEnum classTrait + FamixGTETHasVisibility classTrait + FamixGTETWithAttributes classTrait + FamixGTETWithInheritances classTrait + FamixGTETWithMethods classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaEnum class >> annotation [

	<FMClass: #Enum super: #FamixGTEJavaType>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
