Trait {
	#name : #FamixGTEWithComments,
	#instVars : [
		'#comments => FMGTEMany type: #FamixGTEComment opposite: #container'
	],
	#category : #'Graphoose-Traits-Comment'
}

{ #category : #meta }
FamixGTEWithComments classSide >> annotation [

	<FMClass: #TWithComments super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #removing }
FamixGTEWithComments >> addComment: aComment [
	self flag: #todo.	"Cyril: Remove next check after some time. This is for a transition. 10 august 2019."
	aComment isString ifTrue: [ self error: 'It is not possible to add a string as a comment anymore. Please create a comment entity to add.' ].
	self comments add: aComment
]

{ #category : #accessing }
FamixGTEWithComments >> comments [
	"Relation named: #comments type: #FamixGTEComment opposite: #container"

	<generated>
	<FMComment: 'list of comments defined in the entity'>
	<derived>
	^ comments
]

{ #category : #accessing }
FamixGTEWithComments >> comments: anObject [

	<generated>
	comments value: anObject
]

{ #category : #testing }
FamixGTEWithComments >> hasComments [
	<FMGTEProperty: #hasComments type: #Boolean>
	<derived>
	<FMComment: 'Define if the entity has at least one comment.'>
	^ self comments isNotEmpty
]

{ #category : #accessing }
FamixGTEWithComments >> numberOfComments [
	<FMGTEProperty: #numberOfComments type: #Number>
	<derived>
	<FMComment: 'The number of comments in a class'>
	^ self
		lookUpPropertyNamed: #numberOfComments
		computedAs: [ self comments size
				+
					(self children asArray
						inject: 0
						into: [ :sum :el | el numberOfComments + sum ]) ]

]

{ #category : #accessing }
FamixGTEWithComments >> numberOfComments: aNumber [
	self cacheAt: #numberOfComments put: aNumber
]

{ #category : #removing }
FamixGTEWithComments >> removeComment: aComment [
	self comments remove: aComment
]
