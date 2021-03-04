Trait {
	#name : #FamixGTETWithComments,
	#instVars : [
		'#comments => GTEMany type: #FamixGTETComment opposite: #container'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithComments classSide >> annotation [

	<FMClass: #TWithComments super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithComments >> addComment: anObject [
	<generated>
	^ self comments add: anObject
]

{ #category : #accessing }
FamixGTETWithComments >> comments [
	"Relation named: #comments type: #FamixGTETComment opposite: #container"

	<generated>
	<FMComment: 'list of comments defined in the entity'>
	<derived>
	^ comments
]

{ #category : #accessing }
FamixGTETWithComments >> comments: anObject [

	<generated>
	comments value: anObject
]
