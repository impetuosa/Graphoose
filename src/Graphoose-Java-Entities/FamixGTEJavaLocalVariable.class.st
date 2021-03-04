Class {
	#name : #FamixGTEJavaLocalVariable,
	#superclass : #FamixGTEJavaNamedEntity,
	#traits : 'FamixGTETCanBeFinal + FamixGTETLocalVariable',
	#classTraits : 'FamixGTETCanBeFinal classTrait + FamixGTETLocalVariable classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaLocalVariable class >> annotation [

	<FMClass: #LocalVariable super: #FamixGTEJavaNamedEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
