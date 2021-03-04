"
A graphoose entity is meant to use graphite based slots: virtual slots that store information in an underlying graph structure
"
Class {
	#name : #GraphooseEntity,
	#superclass : #MooseEntity,
	#category : #'Graphoose-Traits-Entities'
}

{ #category : #'instance creation' }
GraphooseEntity class >> annotation [
	<FMClass: #Entity super: #MooseEntity>
	<package: #'Graphoose-Traits'>
	<abstract>
	
]

{ #category : #'instance creation' }
GraphooseEntity class >> iHopeYouAreCallingThisNewFromTheModelInstantiateMethod [
	^ super new
]

{ #category : #'instance creation' }
GraphooseEntity class >> new [
	Warning
		signal:
			'Should not be using new. A Graphoose entity deploy it''s state on the model''s graph '.
	^ super new
]

{ #category : #accessing }
GraphooseEntity >> graph [
 	^ mooseModel graph
]
