Class {
	#name : #FamixGTEJavaNamedEntity,
	#superclass : #FamixGTEJavaSourcedEntity,
	#traits : 'FamixGTETInvocationsReceiver + FamixGTETNamedEntity + FamixGTETPackageable + FamixGTETWithAnnotationInstances',
	#classTraits : 'FamixGTETInvocationsReceiver classTrait + FamixGTETNamedEntity classTrait + FamixGTETPackageable classTrait + FamixGTETWithAnnotationInstances classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixGTEJavaSourcedEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
