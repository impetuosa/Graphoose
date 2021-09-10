"
A Graphoose model includes a graph where the state is meant to be stored partionated, and managed.

"
Class {
	#name : #GraphooseModel,
	#superclass : #MooseModel,
	#instVars : [
		'graph'
	],
	#category : #'Graphoose-core'
}

{ #category : #meta }
GraphooseModel class >> importFrom: aStream withMetamodel: aMetamodel customizingImporterWith: aBlock [

	"I import a MSE with its metamodel and return a FMModel from it. It is possible to customize the importer via a block"

	| model importer areWarningsEnabled |
	model := FMModel withMetamodel: aMetamodel.
	importer := aBlock value:
		            ((GraphooseImporter
			              repository: model
			              destinatonModel: self new)
			             autorizeDandlingReferencesAtEnd
			             stream: aStream;
			             yourself).

	"We are currently updating the meta models and most parsers are not up to date.
	We disable warnings to avoid all deprecation warnings during the transition phase."
	areWarningsEnabled := Deprecation raiseWarning.
	[ 
	Deprecation raiseWarning: false.
	importer run ] ensure: [ 
		Deprecation raiseWarning: areWarningsEnabled ].

	model updateCache.
	^	importer destinationModel. 
]

{ #category : #meta }
GraphooseModel class >> new [
	^ super new
		graph: GTEAdjacencyListGraph new;
		yourself
]

{ #category : #meta }
GraphooseModel class >> profiledImportFrom: aStream [

	| ret |
	AndreasSystemProfiler spyOn: [ ret := self importFrom: aStream ].
	^ ret
]

{ #category : #accessing }
GraphooseModel >> add: anEntity [
	super add: anEntity.
	graph addNode: anEntity
]

{ #category : #accessing }
GraphooseModel >> graph [
	^ graph
]

{ #category : #accessing }
GraphooseModel >> graph: aGraph [
	graph := aGraph
]

{ #category : #accessing }
GraphooseModel >> importFrom: aModel named: aString [
	self assert: aModel class = self class.
	aModel name: aString.
	^ aModel
]

{ #category : #'as yet unclassified' }
GraphooseModel >> instantiate: aClass [
	| entity |
	entity := aClass iHopeYouAreCallingThisNewFromTheModelInstantiateMethod.
	self add: entity.
	^ entity
]
