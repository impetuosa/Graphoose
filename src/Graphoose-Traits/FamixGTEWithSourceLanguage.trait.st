Trait {
	#name : #FamixGTEWithSourceLanguage,
	#instVars : [
		'#declaredSourceLanguage => FMGTEOne type: #FamixGTESourceLanguage opposite: #sourcedEntities'
	],
	#category : #'Graphoose-Traits-SourceLanguage'
}

{ #category : #meta }
FamixGTEWithSourceLanguage classSide >> annotation [

	<FMClass: #TWithSourceLanguage super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithSourceLanguage >> declaredSourceLanguage [
	"Relation named: #declaredSourceLanguage type: #FamixGTESourceLanguage opposite: #sourcedEntities"

	<generated>
	<FMComment: 'The declared SourceLanguage for the source code of this entity'>
	^ declaredSourceLanguage
]

{ #category : #accessing }
FamixGTEWithSourceLanguage >> declaredSourceLanguage: anObject [

	<generated>
	declaredSourceLanguage := anObject
]

{ #category : #testing }
FamixGTEWithSourceLanguage >> isUnknown [
	^ true
]

{ #category : #accessing }
FamixGTEWithSourceLanguage >> sourceLanguage [
	^ self sourceLanguageOr: self unknowSourceLanguageClass
]

{ #category : #accessing }
FamixGTEWithSourceLanguage >> sourceLanguageOr: unknownSourceLanguageClass [
	^ self declaredSourceLanguage ifNil: [
		self mooseModel 
			ifNil: [ unknownSourceLanguageClass new ] 
			ifNotNil: #sourceLanguage ]
]

{ #category : #accessing }
FamixGTEWithSourceLanguage >> unknowSourceLanguageClass [
	^ (self mooseDescription package
		classNamed: 'UnknownSourceLanguage'
		ifAbsent: [ self error: 'This entity has no source language, no model and no class implementing #FamixGTEUnknownSourceLanguage in it metamodel.' ])
		implementingClass
]
