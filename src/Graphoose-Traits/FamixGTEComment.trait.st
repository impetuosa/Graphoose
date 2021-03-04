"
FAMIXComment represents one instance of a comment (in the sense of programming language comments) for any Famix sourced entity. The commented sourced entity is called the container in the FAMIX model.
"
Trait {
	#name : #FamixGTEComment,
	#instVars : [
		'#container => FMGTEOne type: #FamixGTEWithComments opposite: #comments',
		'#content => FMGTEProperty'
	],
	#category : #'Graphoose-Traits-Comment'
}

{ #category : #meta }
FamixGTEComment classSide >> annotation [

	<FMClass: #TComment super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #'instance creation' }
FamixGTEComment classSide >> content: aString [
	^ self new
		content: aString;
		yourself
]

{ #category : #accessing }
FamixGTEComment >> container [
	"Relation named: #container type: #FamixGTEWithComments opposite: #comments"

	<generated>
	<FMComment: 'Source code entity containing the comment'>
	^ container
]

{ #category : #accessing }
FamixGTEComment >> container: anObject [

	container := anObject.
	self resetMooseName.

]

{ #category : #accessing }
FamixGTEComment >> content [

	<FMGTEProperty: #content type: #String>
	<generated>
	<FMComment: 'Content of the comment as a String'>
	^ content
]

{ #category : #accessing }
FamixGTEComment >> content: anObject [
	<generated>
	content := anObject
]

{ #category : #printing }
FamixGTEComment >> gtDisplayOn: aStream [
	| preview |
	preview := {String cr . String lf . String crlf}
		inject: (self sourceText truncateWithElipsisTo: 10)
		into: [ :crtLine :lineReturn | crtLine copyReplaceAll: lineReturn with: ' ' ].
	aStream
		nextPut: $";
		nextPutAll: preview;
		nextPutAll: '" in '.
	self container gtDisplayOn: aStream
]

{ #category : #printing }
FamixGTEComment >> printOn: aStream [
	self sourceText ifNotNil: [ :sourceText | aStream nextPutAll: (sourceText contractTo: 50) ].
	aStream nextPutAll: ' (comment on '.
	self container printOn: aStream.
	aStream nextPut: $)
]

{ #category : #accessing }
FamixGTEComment >> sourceText [
	^ self content
		ifNil: [ self sourceAnchor
				ifNil: [ '' ]
				ifNotNil: #sourceText ]
]
