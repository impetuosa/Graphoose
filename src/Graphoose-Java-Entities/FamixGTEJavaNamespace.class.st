Class {
	#name : #FamixGTEJavaNamespace,
	#superclass : #FamixGTEJavaContainerEntity,
	#traits : 'FamixGTETNamespace + FamixGTETWithGlobalVariables',
	#classTraits : 'FamixGTETNamespace classTrait + FamixGTETWithGlobalVariables classTrait',
	#instVars : [
		'#parentNamespace => GTEOne type: #FamixGTEJavaNamespace opposite: #childNamespaces',
		'#childNamespaces => GTEMany type: #FamixGTEJavaNamespace opposite: #parentNamespace'
	],
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaNamespace class >> annotation [

	<FMClass: #Namespace super: #FamixGTEJavaContainerEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEJavaNamespace >> addChildNamespace: anObject [
	<generated>
	^ self childNamespaces add: anObject
]

{ #category : #accessing }
FamixGTEJavaNamespace >> childNamespaces [
	"Relation named: #childNamespaces type: #FamixGTEJavaNamespace opposite: #parentNamespace"

	<generated>
	<FMComment: 'Namespaces embedded in this namespace, if any.'>
	<derived>
	^ childNamespaces
]

{ #category : #accessing }
FamixGTEJavaNamespace >> childNamespaces: anObject [

	<generated>
	childNamespaces value: anObject
]

{ #category : #accessing }
FamixGTEJavaNamespace >> parentNamespace [
	"Relation named: #parentNamespace type: #FamixGTEJavaNamespace opposite: #childNamespaces"

	<generated>
	<FMComment: 'Parent namespace embedding this namespace, if any.'>
	<container>
	^ parentNamespace
]

{ #category : #accessing }
FamixGTEJavaNamespace >> parentNamespace: anObject [

	<generated>
	parentNamespace := anObject
]

{ #category : #navigation }
FamixGTEJavaNamespace >> parentNamespaceGroup [
	<generated>
	<navigation: 'ParentNamespace'>
	^ MooseSpecializedGroup with: self parentNamespace
]
