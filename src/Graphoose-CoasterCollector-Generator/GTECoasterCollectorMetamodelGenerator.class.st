Class {
	#name : #GTECoasterCollectorMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'coaster',
		'shape',
		'round',
		'square',
		'oval',
		'creator',
		'brewery',
		'country'
	],
	#category : #'Graphoose-CoasterCollector-Generator'
}

{ #category : #accessing }
GTECoasterCollectorMetamodelGenerator class >> packageName [
    ^ #'CoasterCollector-GraphiteModel'

]

{ #category : #accessing }
GTECoasterCollectorMetamodelGenerator class >> prefix [
    ^ #'GCC'

]

{ #category : #definition }
GTECoasterCollectorMetamodelGenerator >> defineClasses [

	super defineClasses.
    coaster := builder newClassNamed: #Coaster.

    country := builder newClassNamed: #Country.

    shape := builder newClassNamed: #Shape.
    round := builder newClassNamed: #Round.
    square := builder newClassNamed: #Square.
    oval := builder newClassNamed: #Oval.

    creator := builder newClassNamed: #Creator.
    brewery := builder newClassNamed: #Brewery
]

{ #category : #definition }
GTECoasterCollectorMetamodelGenerator >> defineHierarchy [
    super defineHierarchy.
    brewery --|> creator.
    oval --|> shape.
    square --|> shape.
    round --|> shape
]

{ #category : #definition }
GTECoasterCollectorMetamodelGenerator >> defineProperties [
    super defineProperties.
    creator property: #name type: #String.
    country property: #name type: #String.
    coaster property: #image type: #String.
    coaster property: #owned type: #Boolean

]

{ #category : #definition }
GTECoasterCollectorMetamodelGenerator >> defineRelations [
    super defineRelations.
    (coaster property: #shape) *- (shape property: #coasters).
    (coaster property: #country) *- (country property: #coasters).
    (coaster property: #creator) *- (creator property: #coasters)

]

{ #category : #definition }
GTECoasterCollectorMetamodelGenerator >> newBuilder [
	^ super newBuilder 
]
