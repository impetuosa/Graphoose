"
FAMIXComment represents one instance of a comment (in the sense of programming language comments) for any Famix sourced entity. The commented sourced entity is called the container in the FAMIX model.
"
Trait {
	#name : #FamixGTETComment,
	#instVars : [
		'#content => GTEProperty',
		'#container => GTEOne type: #FamixGTETWithComments opposite: #comments'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETComment classSide >> annotation [

	<FMClass: #TComment super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETComment >> container [
	"Relation named: #container type: #FamixGTETWithComments opposite: #comments"

	<generated>
	<FMComment: 'Source code entity containing the comment'>
	^ container
]

{ #category : #accessing }
FamixGTETComment >> container: anObject [

	<generated>
	container := anObject
]

{ #category : #accessing }
FamixGTETComment >> content [

	<FMProperty: #content type: #String>
	<generated>
	<FMComment: 'Content of the comment as a String'>
	^ content
]

{ #category : #accessing }
FamixGTETComment >> content: anObject [
	<generated>
	content := anObject
]
