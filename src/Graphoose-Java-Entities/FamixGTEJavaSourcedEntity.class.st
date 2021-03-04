Class {
	#name : #FamixGTEJavaSourcedEntity,
	#superclass : #FamixGTEJavaEntity,
	#traits : 'FamixGTETSourceEntity + FamixGTETWithComments + FamixGTETWithFiles',
	#classTraits : 'FamixGTETSourceEntity classTrait + FamixGTETWithComments classTrait + FamixGTETWithFiles classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaSourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FamixGTEJavaEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
