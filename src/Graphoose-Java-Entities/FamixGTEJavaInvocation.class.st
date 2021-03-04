Class {
	#name : #FamixGTEJavaInvocation,
	#superclass : #FamixGTEJavaEntity,
	#traits : 'FamixGTETHasSignature + FamixGTETInvocation',
	#classTraits : 'FamixGTETHasSignature classTrait + FamixGTETInvocation classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixGTEJavaEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
