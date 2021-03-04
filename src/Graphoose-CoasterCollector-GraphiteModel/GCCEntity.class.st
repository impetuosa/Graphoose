Class {
	#name : #GCCEntity,
	#superclass : #MooseEntity,
	#category : #'Graphoose-CoasterCollector-GraphiteModel-Entities'
}

{ #category : #meta }
GCCEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'CoasterCollector-GraphiteModel'>
	<generated>
	^self
]

{ #category : #meta }
GCCEntity class >> metamodel [

	<generated>
	^ GCCModel metamodel
]

{ #category : #accessing }
GCCEntity >> graph [
 	^ mooseModel graph
]
