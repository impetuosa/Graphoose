Class {
	#name : #GraphooseFutureEntity,
	#superclass : #FMFutureEntity,
	#category : #'Graphoose-core'
}

{ #category : #initialization }
GraphooseFutureEntity >> in: anImporter named: aString [
	importer := anImporter.
	metaDescription := importer metamodel elementNamed: aString.
	instance := metaDescription createInstanceFor: anImporter destinationModel.
]
