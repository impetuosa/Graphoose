Class {
	#name : #GraphooseImporter,
	#superclass : #FMImporter,
	#instVars : [
		'destinationModel'
	],
	#category : #'Graphoose-core'
}

{ #category : #'as yet unclassified' }
GraphooseImporter class >> model: aModel [
	^ self error: 'Use #repository:destinationModel: instead'
]

{ #category : #'as yet unclassified' }
GraphooseImporter class >> repository: aRepository destinatonModel: anActualModel [
	^ self new
		model: aRepository;
		destinationModel: anActualModel;
		yourself
]

{ #category : #accessing }
GraphooseImporter >> beginEntity: name [

	| translatedName |
	translatedName := self translationUnit translate: name.
	stack push: (GraphooseFutureEntity in: self named: translatedName)
]

{ #category : #accessing }
GraphooseImporter >> destinationModel [

	^ destinationModel
]

{ #category : #accessing }
GraphooseImporter >> destinationModel: anActualModel [

	destinationModel := anActualModel
]

{ #category : #accessing }
GraphooseImporter >> run [
	self parser new
		stream: stream;
		importer: self;
		basicRun
]
