"
FAMIXSourceLanguage represents the programming language in which an entity is written. It is used for dispatching entity actions for specific languages. For example, formatting a source text will be performed according to the language. A project may have multiple languages. 

A source language has a name and entities that are written in this language. 
One can create a default source language for a project by not associating any entities to it. In this case, all entities that do not have specific source langauge, belong to the default source language. One can attach entities to a sourceLanguage using addSourceEntity:.
"
Trait {
	#name : #FamixGTETSourceLanguage,
	#instVars : [
		'#sourcedEntities => GTEMany type: #FamixGTETWithSourceLanguage opposite: #declaredSourceLanguage'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETSourceLanguage classSide >> annotation [

	<FMClass: #TSourceLanguage super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETSourceLanguage >> addSourcedEntity: anObject [
	<generated>
	^ self sourcedEntities add: anObject
]

{ #category : #accessing }
FamixGTETSourceLanguage >> sourcedEntities [
	"Relation named: #sourcedEntities type: #FamixGTETWithSourceLanguage opposite: #declaredSourceLanguage"

	<generated>
	<FMComment: 'References to the entities saying explicitly that are written in this language.'>
	<derived>
	^ sourcedEntities
]

{ #category : #accessing }
FamixGTETSourceLanguage >> sourcedEntities: anObject [

	<generated>
	sourcedEntities value: anObject
]
