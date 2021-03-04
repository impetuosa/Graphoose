Class {
	#name : #GTEMooseQueryGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'tAssociationMetaLevelDependency',
		'tEntityMetaLevelDependency',
		'tOODependencyQueries'
	],
	#category : #Graphoose
}

{ #category : #accessing }
GTEMooseQueryGenerator class >> packageName [

	^ #'Graphoose-Query'
]

{ #category : #accessing }
GTEMooseQueryGenerator class >> prefix [

	^ 'GTE'
]

{ #category : #definition }
GTEMooseQueryGenerator >> defineHierarchy [

	tOODependencyQueries --|> tEntityMetaLevelDependency.

]

{ #category : #definition }
GTEMooseQueryGenerator >> defineTraits [

	tAssociationMetaLevelDependency := builder newTraitNamed: #TAssociationMetaLevelDependency.
	tEntityMetaLevelDependency := builder newTraitNamed: #TEntityMetaLevelDependency.
	tOODependencyQueries := builder newTraitNamed: #TOODependencyQueries.

]

{ #category : #definition }
GTEMooseQueryGenerator >> initialize [
	super initialize.
	self beGraphiteSlot
]
