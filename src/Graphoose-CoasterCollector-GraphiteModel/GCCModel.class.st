Class {
	#name : #GCCModel,
	#superclass : #MooseModel,
	#instVars : [
		'graph'
	],
	#category : #'Graphoose-CoasterCollector-GraphiteModel-Model'
}

{ #category : #meta }
GCCModel class >> annotation [
	<FMClass: #GCCModel super: #MooseModel>
	<package: #'CoasterCollector-GraphiteModel'>
	<generated>
]

{ #category : #meta }
GCCModel class >> new [
	^ super new
		graph: GTEAdjacencyListGraph new;
		yourself
]

{ #category : #accessing }
GCCModel >> add: anEntity [
	super add: anEntity.
	graph addNode: anEntity
]

{ #category : #accessing }
GCCModel >> graph [
	^ graph
]

{ #category : #accessing }
GCCModel >> graph: aGraph [
	graph := aGraph
]

{ #category : #'as yet unclassified' }
GCCModel >> instantiate: aClass [
	| entity |
	entity := aClass new.
	self add: entity.
	^ entity
]
