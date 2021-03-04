Trait {
	#name : #FamixGTEWithStatements,
	#traits : 'FamixGTESourceEntity + FamixGTEWithAccesses + FamixGTEWithInvocations',
	#classTraits : 'FamixGTESourceEntity classTrait + FamixGTEWithAccesses classTrait + FamixGTEWithInvocations classTrait',
	#category : #'Graphoose-Traits-Behavioral'
}

{ #category : #meta }
FamixGTEWithStatements classSide >> annotation [

	<FMClass: #TWithStatements super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #metrics }
FamixGTEWithStatements >> computeCyclomaticComplexity [
	^ self notExistentMetricValue
]

{ #category : #metrics }
FamixGTEWithStatements >> cyclomaticComplexity [
	<FMGTEProperty: #cyclomaticComplexity type: #Number>
	<FMComment: 'The number of linear-independent paths through a method.'>
	^ self lookUpPropertyNamed: #cyclomaticComplexity computedAs: [ self computeCyclomaticComplexity ]
]

{ #category : #metrics }
FamixGTEWithStatements >> cyclomaticComplexity: aNumber [
	self cacheAt: #cyclomaticComplexity put: aNumber
]

{ #category : #testing }
FamixGTEWithStatements >> isBehavioural [

	<generated>
	^ true
]

{ #category : #metrics }
FamixGTEWithStatements >> numberOfLinesOfDeadCode [
	<FMGTEProperty: #numberOflinesOfDeadCode type: #Number>
	<FMComment: 'Number of lines of dead code present in the entity.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOflinesOfDeadCode computedAs: [ self deadChildren sumNumbers: #numberOfLinesOfCode ]
]

{ #category : #metrics }
FamixGTEWithStatements >> numberOfStatements [
	<FMGTEProperty: #numberOfStatements type: #Number>
	<derived>
	<FMComment: 'The number of statements in a class'>
	^ self lookUpPropertyNamed: #numberOfStatements computedAs: [ MooseUnavailableMetric ]
]

{ #category : #metrics }
FamixGTEWithStatements >> numberOfStatements: aNumber [
	self cacheAt: #numberOfStatements put: aNumber
]

{ #category : #asserting }
FamixGTEWithStatements >> shouldCountChildrenForLinesOfCodeIfNoSourceAnchor [
	^ false
]
