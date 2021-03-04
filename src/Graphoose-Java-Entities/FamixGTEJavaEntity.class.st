"
file :=  'ArgoUML-0.34.mse' asFileReference readStream.

dictionary := Dictionary newFrom: (
	FamixJavaEntity withAllSubclasses collect: [ :c | 
		cn := c name withoutPrefix: #FamixJava.
		('FAMIX.', cn) -> ('FamixJava-Entities.', cn) ]).

dictionary at: 'FAMIX.JavaSourceLanguage' put: 'FamixJava-Entities.SourceLanguage'.

repo := MooseModel importFrom: file withMetamodel: FamixJavaGenerator metamodel translationDictionary: dictionary.

model := MooseModel new.
	model silentlyAddAll: repo elements.
	model entityStorage forRuntime.
model.
"
Class {
	#name : #FamixGTEJavaEntity,
	#superclass : #GraphooseEntity,
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaEntity class >> annotation [

	<FMClass: #Entity super: #GraphooseEntity>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixGTEJavaEntity class >> metamodel [

	<generated>
	^ FamixGTEJavaModel metamodel
]

{ #category : #testing }
FamixGTEJavaEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isImplicitVariable [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isPrimitiveType [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixGTEJavaEntity >> isType [

	<generated>
	^ false
]
