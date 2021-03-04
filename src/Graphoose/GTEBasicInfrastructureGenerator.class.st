Class {
	#name : #GTEBasicInfrastructureGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'sourceAnchor',
		'sourceLanguage',
		'sourcedEntity',
		'comment',
		'namedEntity',
		'sourceTextAnchor',
		'unknownSourceLanguage'
	],
	#category : #Graphoose
}

{ #category : #testing }
GTEBasicInfrastructureGenerator class >> isAbstract [
	^ self = FamixBasicInfrastructureGenerator
]

{ #category : #accessing }
GTEBasicInfrastructureGenerator class >> submetamodels [
	^ {GTETraitGenerator}
]

{ #category : #definition }
GTEBasicInfrastructureGenerator >> defineClasses [
	super defineClasses.

	sourceAnchor := builder newClassNamed: #SourceAnchor.
	sourceLanguage := builder newClassNamed: #SourceLanguage.
	unknownSourceLanguage := builder newClassNamed: #UnknownSourceLanguage.
	sourcedEntity := builder newClassNamed: #SourcedEntity.
	comment := builder newClassNamed: #Comment.
	namedEntity := builder newClassNamed: #NamedEntity.
	sourceTextAnchor := builder newClassNamed: #SourceTextAnchor
]

{ #category : #definition }
GTEBasicInfrastructureGenerator >> defineHierarchy [

	sourceAnchor --|> #TSourceAnchor.

	sourceLanguage --|> #TSourceLanguage.

	sourcedEntity --|> #TSourceEntity.
	sourcedEntity --|> #TWithComments.

	comment --|> sourcedEntity.
	comment --|> #TComment.

	namedEntity --|> sourcedEntity.
	namedEntity --|> #TNamedEntity.

	sourceTextAnchor --|> sourceAnchor.
	sourceTextAnchor --|> #THasImmediateSource.

	unknownSourceLanguage --|> sourceLanguage.
	unknownSourceLanguage --|> #TUnknownSourceLanguage
]

{ #category : #definition }
GTEBasicInfrastructureGenerator >> initialize [
	super initialize.
	self beGraphiteSlot
]
