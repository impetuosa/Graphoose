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
GraphooseModel class >> new [
	^ super new
		graph: GTEAdjacencyListGraph new;
		yourself
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

{ #category : #'as yet unclassified' }
GraphooseModel >> instantiate: aClass [
	| entity |
	entity := aClass iHopeYouAreCallingThisNewFromTheModelInstantiateMethod.
	self add: entity.
	^ entity
]
