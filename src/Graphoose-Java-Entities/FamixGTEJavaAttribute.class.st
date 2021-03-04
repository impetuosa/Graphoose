Class {
	#name : #FamixGTEJavaAttribute,
	#superclass : #FamixGTEJavaNamedEntity,
	#traits : 'FamixGTETAttribute + FamixGTETCanBeFinal + FamixGTETHasVisibility + FamixGTETWithClassScope',
	#classTraits : 'FamixGTETAttribute classTrait + FamixGTETCanBeFinal classTrait + FamixGTETHasVisibility classTrait + FamixGTETWithClassScope classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaAttribute class >> annotation [

	<FMClass: #Attribute super: #FamixGTEJavaNamedEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
