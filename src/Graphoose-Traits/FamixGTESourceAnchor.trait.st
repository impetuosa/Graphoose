"
FAMIXSourceAnchor is an abstract class representing a pointer to a source. The source can be identified in multiple ways as specified by the subclasses.  The famix entity that this class is a source pointer for, is accessible via element property.
"
Trait {
	#name : #FamixGTESourceAnchor,
	#instVars : [
		'#element => FMGTEOne type: #FamixGTESourceEntity opposite: #sourceAnchor'
	],
	#category : #'Graphoose-Traits-SourceAnchor'
}

{ #category : #meta }
FamixGTESourceAnchor classSide >> annotation [

	<FMClass: #TSourceAnchor super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTESourceAnchor >> allSourceAnchors [
	^ { self }
]

{ #category : #enumerating }
FamixGTESourceAnchor >> allSourceAnchorsDo: aBlock [
	^ aBlock value: self
]

{ #category : #accessing }
FamixGTESourceAnchor >> completeText [
	"The complete text of a FileAnchor contains all the code of the file pointed by the source anchor. On the contrary the #sourceText return only the pant of the file concerned by the entity. For example a FAMIXFileAnchon knows the start line and end line of the source anchor into the file."

	"By default I return the sourceText because most of my subclasses will only do that."

	^ self sourceText
]

{ #category : #accessing }
FamixGTESourceAnchor >> containerFiles [
	^ {}
]

{ #category : #accessing }
FamixGTESourceAnchor >> element [
	"Relation named: #element type: #FamixGTESourceEntity opposite: #sourceAnchor"

	<generated>
	<FMComment: 'Enable the accessibility to the famix entity that this class is a source pointer for'>
	^ element
]

{ #category : #accessing }
FamixGTESourceAnchor >> element: anObject [

	<generated>
	element := anObject
]

{ #category : #testing }
FamixGTESourceAnchor >> hasSource [
	^ self explicitRequirement
]

{ #category : #testing }
FamixGTESourceAnchor >> isFileAnchor [
	^ false
]

{ #category : #testing }
FamixGTESourceAnchor >> isMultiple [
	"Return true for source anchors in multiple parts."

	^ false
]

{ #category : #metrics }
FamixGTESourceAnchor >> lineCount [
	<FMGTEProperty: #lineCount type: #Number>
	<derived>
	<FMComment: 'The number of lines in the source text'>
	^ self privateLineCount
]

{ #category : #private }
FamixGTESourceAnchor >> privateLineCount [
	^ self sourceText
		ifNotNil: #lineCount
		ifNil: [ self notExistentMetricValue ]
]

{ #category : #accessing }
FamixGTESourceAnchor >> sourceText [
	^ self explicitRequirement
]

{ #category : #accessing }
FamixGTESourceAnchor >> sourceTextFrom: startPosition to: endPosition [
	self sourceText size < endPosition ifTrue: [ ^ '' ].
	
	^ self sourceText copyFrom: startPosition to: endPosition
]

{ #category : #testing }
FamixGTESourceAnchor >> startBeforeFileAnchor: aTSourceAnchor [
	(self startLine isNil or: [ aTSourceAnchor startLine isNil ]) ifTrue: [ ^ false ].
		
	^ aTSourceAnchor startLine >= self startLine
]
