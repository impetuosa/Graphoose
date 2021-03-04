"
Description
--------------------

I am a source anchor storing the sources by pointing another source anchor and defining a subpart of this source as my sourced.

I point another source anchor and define a start and end position in the source text of this source anchor as my anchor.
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	endPos:					<anInteger>				Position of the last character of my source in the source text of the relative anchor.
	relatedAnchor:			<aSourceAnchor>			The anchor I'll get my relative sources from.
	startPos:					<anInteger>				Position of the first character of my source in the source text of the relative anchor.

"
Trait {
	#name : #FamixGTETRelativeSourceAnchor,
	#instVars : [
		'#relatedAnchor => GTEProperty',
		'#startPos => GTEProperty',
		'#endPos => GTEProperty'
	],
	#traits : 'FamixGTETSourceAnchor',
	#classTraits : 'FamixGTETSourceAnchor classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETRelativeSourceAnchor classSide >> annotation [

	<FMClass: #TRelativeSourceAnchor super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETRelativeSourceAnchor >> endPos [

	<FMProperty: #endPos type: #Number>
	<generated>
	<FMComment: 'Stop position in the source'>
	^ endPos
]

{ #category : #accessing }
FamixGTETRelativeSourceAnchor >> endPos: anObject [
	<generated>
	endPos := anObject
]

{ #category : #accessing }
FamixGTETRelativeSourceAnchor >> relatedAnchor [

	<FMProperty: #relatedAnchor type: #FamixGTETSourceAnchor>
	<generated>
	<FMComment: 'Source anchor to which I am relative.'>
	^ relatedAnchor
]

{ #category : #accessing }
FamixGTETRelativeSourceAnchor >> relatedAnchor: anObject [
	<generated>
	relatedAnchor := anObject
]

{ #category : #accessing }
FamixGTETRelativeSourceAnchor >> startPos [

	<FMProperty: #startPos type: #Number>
	<generated>
	<FMComment: 'Start position in the source'>
	^ startPos
]

{ #category : #accessing }
FamixGTETRelativeSourceAnchor >> startPos: anObject [
	<generated>
	startPos := anObject
]
